package com.rental.action;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.rental.entity.Customer;
import com.rental.entity.Record;
import com.rental.service.CustomerService;
import com.rental.service.RecordService;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.File;
import java.io.IOException;
import java.util.List;

public class RecordAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	@Autowired
	private RecordService recordService;
	private Record rec;
	
	public Record getRec() {
		return rec;
	}

	public void setRec(Record rec) {
		this.rec = rec;
	}

	public String pbbrand;
	public String getPbbrand() {
		return pbbrand;
	}

	public void setPbbrand(String pbbrand) {
		this.pbbrand = pbbrand;
	}

	private Record record;
	private Customer customer;
	private String fileImgFileName;
	private File fileImg;
	 private String fileImgContentType;
	public String getFileImgContentType() {
		return fileImgContentType;
	}

	public void setFileImgContentType(String fileImgContentType) {
		this.fileImgContentType = fileImgContentType;
	}

	private CustomerService customerService;
	private int pagesize = 5;
	private int currentPage = 1;

	public CustomerService getCustomerService() {
		return customerService;
	}

	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public String getFileImgFileName() {
		return fileImgFileName;
	}

	public void setFileImgFileName(String fileImgFileName) {
		this.fileImgFileName = fileImgFileName;
	}

	public File getFileImg() {
		return fileImg;
	}

	public void setFileImg(File fileImg) {
		this.fileImg = fileImg;
	}

	public RecordService getRecordService() {
		return recordService;
	}

	public void setRecordService(RecordService recordService) {
		this.recordService = recordService;
	}

	public Record getRecord() {
		return record;
	}

	public void setRecord(Record record) {
		this.record = record;
	}

	/**
	 * 车辆查询（管理员）
	 */
	public String showCar() throws Exception {
		
		List<Record> list=recordService.getAll();
		ActionContext.getContext().put("list", list);
		if (list!=null) {
			return "showCar";
		}
		return null;
		
	}
	/**
	 * 添加车辆
	 * @return
	 */
	public String tianjia() {
		String path= ServletActionContext.getRequest().getRealPath("/")+"upload/";
		if(null!=fileImg) {
			upload(path);
			record.setImg(fileImgFileName);
		}
		recordService.save(record);
				return "tj";
	}

	/**
	 * 上传图片
	 * @param path
	 * @return
	 */
	private boolean upload(String path){
		File file = new File(path + "/" + fileImgFileName);
		try {
			FileUtils.copyFile(fileImg, file);
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	/**
	 * 删除车辆信息
	 * @return
	 */
	public String delet() {
		recordService.delete(record.getId());
		return "delet";
	}

	/**
	 * 修改车辆信息
	 */
	public String query() {
		record=recordService.getOneById(record.getId());
		ActionContext.getContext().put("list", record);
		return "cx";
	}
	
	public String updat() {
		String path= ServletActionContext.getRequest().getRealPath("/")+"upload/";
		System.out.println(path);
		File file=new File(path+"/"+fileImgFileName);
				try {
					FileUtils.copyFile(fileImg, file);
				} catch (IOException e) {
					e.printStackTrace();
				}
			record.setImg(fileImgFileName);
			recordService.update(record);
			return "updat";
		}
	
	/**
	 * 返回ID(租车)
	 */
	public String getId() {
		customer= (Customer) ActionContext.getContext().getSession().get("customer");
		if (customer==null) {
			return "register";
		}
		record=recordService.getOneById(record.getId());
		ActionContext.getContext().put("record", record);
		return "rentalNow";
	}

	/**
	 * 分页(展示车辆信息)
	 * @return
	 */
		public String page(){
			long totalPage = recordService.findTotalPage(pagesize);
			if (currentPage<1) {
				currentPage = 1;
			}
			if (currentPage>totalPage) {
				currentPage = (int)totalPage;
			}
			List list = recordService.findPage(pagesize, currentPage);
			ActionContext.getContext().put("pages", list);
			ActionContext.getContext().getSession().put("page", currentPage);
			ActionContext.getContext().getSession().put("totalPage",totalPage);
			return "page";
		}
	/**
	 * 按照品牌查找车辆
	 * @return
	 */
	public String search() {
		List<Record> list=recordService.searchCarName(rec.getBrand());
		System.out.println(list);
		if (list==null) {
			return "noSearch";
		}
		ActionContext.getContext().put("record", list);
		return "search";
	}
	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
}
