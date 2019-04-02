package vn.duytan.core.persistence.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "cbgv")
public class Cbgv {
    @Id
    @Column(name = "id")
    private Integer id;

    @Column(name = "ho_ten")
    private String ho_Ten;

    @Column(name = "matkhau")
    private String matKhau;

    @Column(name = "ngay_sinh")
    private String ngay_Sinh;

    @Column(name = "gioi_tinh")
    private String gioi_Tinh;

    @Column(name = "hoc_ham")
    private String hoc_Ham;

    @Column(name = "hoc_vi")
    private String hoc_Vi;

    @Column(name = "nam_duoc_phong")
    private String nam_Duoc_Phong;

    @Column(name = "nam_dat_hoc_vi")
    private String nam_Dat_Hoc_Vi;

    @Column(name = "chuc_danh_nc")
    private String chuc_danh_nc;

    @Column(name = "dien_thoai_NR")
    private String dien_Thoai_Nr;

    @Column(name = "CQ")
    private String cq;

    @Column(name = "mobile")
    private String mobile;

    @Column(name = "email")
    private String email;

    @Column(name = "linh_vuc_chuyen_sau")
    private String linh_Vuc_Chuyen_Sau;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHo_Ten() {
        return ho_Ten;
    }

    public void setHo_Ten(String ho_Ten) {
        this.ho_Ten = ho_Ten;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getNgay_Sinh() {
        return ngay_Sinh;
    }

    public void setNgay_Sinh(String ngay_Sinh) {
        this.ngay_Sinh = ngay_Sinh;
    }

    public String getGioi_Tinh() {
        return gioi_Tinh;
    }

    public void setGioi_Tinh(String gioi_Tinh) {
        this.gioi_Tinh = gioi_Tinh;
    }

    public String getHoc_Ham() {
        return hoc_Ham;
    }

    public void setHoc_Ham(String hoc_Ham) {
        this.hoc_Ham = hoc_Ham;
    }

    public String getHoc_Vi() {
        return hoc_Vi;
    }

    public void setHoc_Vi(String hoc_Vi) {
        this.hoc_Vi = hoc_Vi;
    }

    public String getNam_Duoc_Phong() {
        return nam_Duoc_Phong;
    }

    public void setNam_Duoc_Phong(String nam_Duoc_Phong) {
        this.nam_Duoc_Phong = nam_Duoc_Phong;
    }

    public String getNam_Dat_Hoc_Vi() {
        return nam_Dat_Hoc_Vi;
    }

    public void setNam_Dat_Hoc_Vi(String nam_Dat_Hoc_Vi) {
        this.nam_Dat_Hoc_Vi = nam_Dat_Hoc_Vi;
    }

    public String getChuc_danh_nc() {
        return chuc_danh_nc;
    }

    public void setChuc_danh_nc(String chuc_danh_nc) {
        this.chuc_danh_nc = chuc_danh_nc;
    }

    public String getDien_Thoai_Nr() {
        return dien_Thoai_Nr;
    }

    public void setDien_Thoai_Nr(String dien_Thoai_Nr) {
        this.dien_Thoai_Nr = dien_Thoai_Nr;
    }

    public String getCq() {
        return cq;
    }

    public void setCq(String cq) {
        this.cq = cq;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLinh_Vuc_Chuyen_Sau() {
        return linh_Vuc_Chuyen_Sau;
    }

    public void setLinh_Vuc_Chuyen_Sau(String linh_Vuc_Chuyen_Sau) {
        this.linh_Vuc_Chuyen_Sau = linh_Vuc_Chuyen_Sau;
    }
}

