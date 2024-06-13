package portfolio.beeNb.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import portfolio.beeNb.vo.EmpVO;

@Mapper
public interface EmpMapper {
	public ArrayList<String> empLogin(EmpVO empVo);
}
