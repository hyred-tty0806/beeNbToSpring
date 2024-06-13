package portfolio.beeNb.vo;

import java.util.Date;

import lombok.Data;

@Data
public class EmpVO {
	private int empNo;
	private String empName;
	private String empPw;
	private String empPhone;
	private String empBirth;
	private Date createDate;
	private Date updateDate;
}
