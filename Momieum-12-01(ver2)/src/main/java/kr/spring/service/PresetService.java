package kr.spring.service;

import java.util.List;

public interface PresetService {

	public String getPresetContent(List<Integer> selectedValues);

	public String getPresetKeyword(List<Integer> selectedValues);
}
