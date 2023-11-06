package kr.spring.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration // 환경설정파일 설정
public class SecurityConfiguration {
	
	@Autowired
	private UserDetailsServiceImpl userService;
	
	@Bean
	public PasswordEncoder passwordEncoder() { // 비밀번호 인코딩 기능
		return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}
	
   @Bean
   public SecurityFilterChain filterChain(HttpSecurity http) throws Exception{
		http.csrf().disable(); //csft인증 토큰 비활성화시킴, 하는게 좋긴 한데 여기선 안쓸거임
		http.authorizeHttpRequests()
			.antMatchers("/", "/member/**").permitAll()   /* 슬러시 또는 멤버 폴더 하위에 모든 접근을 허용 */
			//.antMatchers("/board/**").authenticated()  /* list파일은 인증된(로그인한)사용자만 접근 허용 */
			.and() //추가
			.formLogin()  /*스프링시큐리트의 로그인폼 디자인 안쓰고, 내가 만든 로그인폼 디자인 쓰겠다*/
			.loginPage("/member/login") /*로그인 페이지는 멤버/로그인 페이지에서 하겠다 */
			.defaultSuccessUrl("/") /*로그인 성공시 이동*/
			.and()
			.logout() /*스프링 시큐리티에서 제공하는 로그아웃 사용 하겠다 */
			.logoutUrl("/member/logout") /*로그아웃 실행하려면 멤버.로그아웃으로 요청*/
			.logoutSuccessUrl("/");  /* 로그아웃하고 슬러시로 이동하겠다 */
		http.userDetailsService(userService); /* 실제 로그인하는 기능은 객체로 선언한 userService안에 있음*/
		return http.build();
   }
   
	
	

}









