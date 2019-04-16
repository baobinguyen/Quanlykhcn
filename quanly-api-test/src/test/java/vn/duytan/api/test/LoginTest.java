package vn.duytan.api.test;

import org.apache.log4j.Logger;
import org.junit.Test;
import vn.duytan.core.dao.CbgvDao;
import vn.duytan.core.daoimpl.CbgvDaoImpl;
import vn.duytan.core.persistence.entity.CbgvEntity;

public class LoginTest {
    private final Logger log = Logger.getLogger(this.getClass());


    @Test
    public void checkiscbgvExist(){

        CbgvDao cbgvDao = new CbgvDaoImpl();
        String hoTen ="admin";
        String matKhau = "111111";
        CbgvEntity entity = cbgvDao.isUseExist(hoTen,matKhau);
        if (entity != null){
            log.error("login thanh cong");
        }else {
            log.error("login that bai");
        }

    }
    @Test
    public void checkfindrole(){
        CbgvDao cbgvDao = new CbgvDaoImpl();
        String hoTen = "nguyen a";
        String matKhau = "123456";
        CbgvEntity  entity = cbgvDao.findRoleByCbgv(hoTen,matKhau);
        log.error(entity.getRoleEntity().getRoleid() + "-" + entity.getRoleEntity().getName());
    }
}
