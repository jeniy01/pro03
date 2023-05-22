package kr.go.gp.service;

import java.util.ArrayList;

import kr.go.gp.dto.NoticeDTO;
import kr.go.gp.model.NoticeDAO;
import kr.go.gp.model.NoticeDAOMysql;

public class NoticeService {
	NoticeDAO dao = new NoticeDAOMysql();
	NoticeDAO dao2 = new NoticeDAOMysql();
	NoticeDAO dao3 = new NoticeDAOMysql();
	
	/*public ArrayList<NoticeDTO> noticeListAll(){
		ArrayList<NoticeDTO> notiList = dao.noticeListAll();
		return notiList;
	}
	public NoticeDTO getNotice(String nnum){
		NoticeDTO notice = dao.getNotice(nnum);
	}
	public int insertNotice(NoticeDTO dto){
		int cnt = dao.insertNotice(noti);
		return cnt;
	}
	public int deleteNotice(String nnum){
		int cnt = dao.deleteNotice(nnum);
		return cnt;
	}
	public int updateNotice(NoticeDTO dto){
		int cnt = dao.updateNoticePro(noti);
		return cnt;
	}*/
}
