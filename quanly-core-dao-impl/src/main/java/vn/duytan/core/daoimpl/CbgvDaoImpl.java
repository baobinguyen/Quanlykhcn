package vn.duytan.core.daoimpl;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import vn.duytan.core.common.util.HibernateUtil;
import vn.duytan.core.dao.CbgvDao;
import vn.duytan.core.data.daoimpl.AbstractDao;
import vn.duytan.core.persistence.entity.CbgvEntity;

public class CbgvDaoImpl extends AbstractDao<Integer, CbgvEntity> implements CbgvDao {

    public CbgvEntity isUseExist(String hoTen, String matKhau) {
        CbgvEntity entity = new CbgvEntity();
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            StringBuilder sql = new StringBuilder("FROM CbgvEntity WHERE hoTen= :hoTen AND matKhau= :matKhau");
            Query query = session.createQuery(sql.toString());
            query.setParameter("hoTen",hoTen);
            query.setParameter("matKhau",matKhau);
            entity = (CbgvEntity) query.uniqueResult();
            transaction.commit();
        } catch (HibernateException e){
            transaction.rollback();
            throw e;
        } finally {
            session.close();
        }
        return entity;
    }

    public CbgvEntity findRoleByCbgv(String hoTen, String matKhau) {
        CbgvEntity entity = new CbgvEntity();
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            StringBuilder sql = new StringBuilder("From CbgvEntity Where hoTen= :hoTen AND matKhau= :matKhau ");
            Query query = session.createQuery(sql.toString());
            query.setParameter("hoTen",hoTen);
            query.setParameter(matKhau,matKhau);
            entity = (CbgvEntity) query.uniqueResult();
            transaction.commit();
        } catch (HibernateException e){
            transaction.rollback();
            throw e;
        } finally {
            session.close();
        }

        return entity;
    }
}
