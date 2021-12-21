package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.service.MyInfoService;

@Controller
public class MyInfoController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private MyInfoService myServ;

	private ModelAndView mv;

	//________________________________________ 회원정보
	
	//__________ 회원정보 페이지
	@GetMapping("myInfo")
	public ModelAndView myInfoMove() {
		logger.info("myInfoMove()");

		mv = myServ.getMyInfo();

		return mv;
	} // myInfoUpdateMove end

	//__________ 회원정보 수정 실행
	@PostMapping("myInfoUpdateProc")
	public String myInfoUpdateProc(MemberDto myInfo, RedirectAttributes rttr) {
		logger.info("myInfoUpdateProc");

		String view = myServ.myInfoUpdate(myInfo, rttr);

		return view;
	} // myInfoUpdateProc end
	
	//________________________________________ 비밀번호 변경

	//__________ 비밀번호 변경 페이지
	@GetMapping("myPassword")
	public String myPasswordMove() {
		logger.info("myPasswordMove()");

		return "myinfo/myPassword";
	} // myPwdUpdateMove end

	//__________ 현재 비밀번호 확인
	@PostMapping(value = "prePwdCheck",
			produces = "application/text; charset=utf-8")
	@ResponseBody
	public String prePwdCheck(String prePwd) {
		logger.info("prePwdCheck");
		
		String result = myServ.prePwdCheck(prePwd);
		
		return result;
	} // prePwdCheck end
	
	//__________ 비밀번호 변경 실행
	@PostMapping("myPwdUpdateProc")
	public String myPwdUpdateProc(MemberDto myInfo, RedirectAttributes rttr) {
		logger.info("myPwdUpdateProc");

		String view = myServ.myPwdUpdate(myInfo, rttr);

		return view;
	} // myInfoUpdateProc end

} // class end
