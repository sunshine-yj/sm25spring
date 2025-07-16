package eud.sm.repository;

import eud.sm.dto.Cust;
import eud.sm.frame.SmRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface CustRepository extends SmRepository <Cust, String> {

}
