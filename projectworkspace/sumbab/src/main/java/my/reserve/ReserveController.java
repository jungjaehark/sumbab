package my.reserve;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("reserveDTO")
public class ReserveController {
	
	@Autowired
	private ReserveService reserveService;
	
	@Autowired
	public void setReserveService(ReserveService reserveService) {
		this.reserveService = reserveService;
	}

	//마이페이지-->나의 예약한 음식점 리스트 보기:리스트 출력
	@RequestMapping(value="/reserve/reserveList")
	public String reserveList(Model model, String memberID) {
		
		model.addAttribute("listFuture", reserveService.getListF(memberID));
		model.addAttribute("listPast", reserveService.getListP(memberID));
		model.addAttribute("storeName", reserveService.getStoreName(memberID));
		
		return "reserve/reserveList";
	}
	
	//식당 상세보기-->예약하기 요청
	@RequestMapping(value="/reserve/reserveForm", method=RequestMethod.GET)//나중에 post로 변경
	public String reserve(Model model) {
		model.addAttribute("reserveDTO", new Reserve());
		return "reserve/reserveForm";
	}
	
	@RequestMapping(value="/reserve/completeReserve", method=RequestMethod.POST)
	public String alignValue(@ModelAttribute("reserveDTO")Reserve reserve,
				ReserveRegitReq resReq, String datepicker, String timepicker) {
		reserveService.regit(resReq, datepicker, timepicker);
		
		return "reserve/completeReserve";
	}
	

}
