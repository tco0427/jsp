package ch07;

import java.util.ArrayList;
import java.util.List;

public class AddrManager {
    List<AddrBean> addrlist=new ArrayList<>();

    public void add(AddrBean ab){
        addrlist.add(ab);
    }
    public List<AddrBean> getAddrList(){
        return addrlist;
    }
}
