package com.test.mypet.board;

import java.util.List;

/***
 * 
 * @author 윤지현
 *
 */
public interface IFaq {

	List<FaqDTO> list();

	FaqDTO get(String seq);

	int add(FaqDTO fdto);


}
