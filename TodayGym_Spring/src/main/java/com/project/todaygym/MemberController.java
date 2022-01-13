package com.project.todaygym;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.dto.MemberFormDto;
import com.project.todaygym.service.MemberService;
import com.project.todaygym.service.SearchService;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	private ModelAndView mv;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private MemberService mServ;

	@Autowired
	private SearchService searchService;

	/* 이메일 인증 */
	@RequestMapping(value="/mailCheck", method=RequestMethod.GET)
	@ResponseBody
	public String mailCheckGET(String email) throws Exception{

		/* 뷰(View)로부터 넘어온 데이터 확인 */
		logger.info("이메일 데이터 전송 확인");
		logger.info("인증번호 : " + email);

		/* 인증번호(난수) 생성 */
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		logger.info("인증번호 " + checkNum);

		/* 이메일 보내기 */
		String setFrom = "kitae14@gmail.com";
		String toMail = email;
		String title = "회원가입 인증 이메일 입니다.";
		String content = 
				"홈페이지를 방문해주셔서 감사합니다." +
						"<br><br>" + 
						"인증 번호는 " + checkNum + "입니다." + 
						"<br>" + 
						"해당 인증번호를 인증번호 확인란에 기입하여 주세요.";

		try {

			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content,true);
			mailSender.send(message);

		}catch(Exception e) {
			e.printStackTrace();
		}
		String num = Integer.toString(checkNum);
		return num;

	}



	// 아이디 찾기 폼
	@GetMapping("/memberSearchId.do")
	public String memberSearchId(){

		return "member/memberSearchId";
	}

	@GetMapping("/searchId.do")
	public ModelAndView searchId(@RequestParam("email") String m_email) {

		mv = searchService.getSearchId(m_email);

		return mv;
	}

	//로그인 페이지로 이동
	@GetMapping("/memberLogin")
	public String memberLogin() {
		logger.info("memberLogin()");
		return "member/memberLogin";
	}

	//회원가입 페이지로 이동
	@GetMapping("/memberJoin")
	public String memberJoin() {
		logger.info("memberJoin()");
		return "member/memberJoin";
	}

	@GetMapping(value = "idCheck",
			produces = "application/text; charset=utf-8")
	@ResponseBody
	public String idCheck(String mid) {
		logger.info("idCheck() - mid : " + mid);

		//이후 해당 아이디로 DB를 검색하는 서비스와 Dao를 활용.
		String res = mServ.idCheck(mid);

		return res;
	}

	@PostMapping("memInsert")
	public String memberInsert(MemberFormDto memberForm,
			RedirectAttributes rttr) {
		logger.info("memberInsert()");

		String view = mServ.memberInsert(memberForm, rttr);

		return view;
	}

	@PostMapping("loginProc")
	public String loginProc(MemberDto member, 
			RedirectAttributes rttr) {
		logger.info("loginProc()");

		String view = mServ.loginProc(member, rttr);

		return view;
	}

	@GetMapping("logout")
	public String logout() {
		logger.info("logout()");

		String view = mServ.logout();

		return view;
	}
} // class end