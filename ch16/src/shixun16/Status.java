package shixun16;

import java.util.ArrayList;
import java.util.HashMap;

public class Status {
 private ArrayList<String>zhuangTai;
 private HashMap<String,ArrayList<String>>tiMu;
	public Status() {
		
		zhuangTai=new ArrayList<String>();
		     tiMu= new HashMap<String, ArrayList<String>>();
		    
		     String qingkuang="没有接到男朋友的电话";
		     zhuangTai.add(qingkuang);
		    
		     String xuanxiang1="我手机静音了";
		     String xuanxiang2="我在打游戏啊";
		     String xuanxiang3="我在给你买东西";
		     String xuanxiang4="我在加班";
		     String xuanxiang5="忘记你的生日了";
		     ArrayList<String> temp = new ArrayList<String>();
		     
		     temp.add(xuanxiang1);
		     temp.add(xuanxiang2);
		     temp.add(xuanxiang3);
		     temp.add(xuanxiang4);
		     temp.add(xuanxiang5);
		    
		     tiMu.put(qingkuang, temp);
	}
	public  ArrayList<String> getzhuangTai(){
		return zhuangTai;
	}
	public void setzhuangTai(ArrayList<String>zhuangTai){
		this.zhuangTai = zhuangTai;
	}
	public HashMap<String,ArrayList<String>>getTiMu(){
		     return tiMu;
	}

}
