package kr.spring.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class PresetServiceImpl implements PresetService {
	
	private final JdbcTemplate jdbcTemplate;
	
	@Autowired
    public PresetServiceImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
	
	@Override
	public String getPresetContent(List<Integer> selectedValues) {
        // selectedValuesList에 있는 값들을 하나씩 선택하여 DB에서 조회
        List<String> presetContents = selectedValues.stream()
                .map(this::getPresetContentByPresetIdx)
                .collect(Collectors.toList());

        // 조회된 문자열들을 하나의 문자열로 합치기
        String resultContent = String.join(" ", presetContents);
        return resultContent;
    }
	
	@Override
	public String getPresetKeyword(List<Integer> selectedValues) {
        // selectedValuesList에 있는 값들을 하나씩 선택하여 DB에서 조회
        List<String> presetKeywords = selectedValues.stream()
                .map(this::getPresetKeywordByPresetIdx)
                .collect(Collectors.toList());

        // 조회된 문자열들을 하나의 문자열로 합치기
        String resultKeyword = String.join(". ", presetKeywords);
        return resultKeyword;
    }

    @SuppressWarnings("deprecation")
    private String getPresetContentByPresetIdx(Integer presetIdx) {
        String sql = "SELECT preset_data FROM tb_preset_data WHERE preset_idx = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{presetIdx}, String.class);
        } catch (EmptyResultDataAccessException e) {
            // 결과가 없는 경우에 대한 처리 (예: 기본값 반환 또는 예외 전파)
            return ""; // 또는 다른 기본값 설정
        }
    }
    
    @SuppressWarnings("deprecation")
    private String getPresetKeywordByPresetIdx(Integer presetIdx) {
        String sql = "SELECT preset_keyword FROM tb_preset_data WHERE preset_idx = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{presetIdx}, String.class);
        } catch (EmptyResultDataAccessException e) {
            // 결과가 없는 경우에 대한 처리 (예: 기본값 반환 또는 예외 전파)
            return ""; // 또는 다른 기본값 설정
        }
    }

	
}
