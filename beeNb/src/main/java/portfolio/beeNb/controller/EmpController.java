package portfolio.beeNb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;
import portfolio.beeNb.mapper.EmpMapper;
import portfolio.beeNb.vo.EmpVO;

@Slf4j
@RestController
public class EmpController {
	@Autowired private EmpMapper empMapper;
	
	@GetMapping("/empLogin")
	public String empLogin(/*
							 * @RequestParam(name="empNo", defaultValue = "0") int
							 * empNo, @RequestParam(name="empPw", defaultValue = "") String empPw
							 */
			EmpVO empVo
			) {
		log.debug("empVo : log : {}", empVo);
		int empNo = empVo.getEmpNo();
		String empPw = empVo.getEmpPw();
		log.debug("empNo : {}", empNo);
		log.debug("empPw : {}", empPw);
		/*
		 * if(empNo == 0 || empPw.equals("")) { } ArrayList<String> resultLogin =
		 * empMapper.empLogin(empVo);
		 * System.out.println("resultLogin : "+resultLogin.toString()); return
		 * "redirect:/roomList";
		 */
		return "empLogin";			
	}
}
