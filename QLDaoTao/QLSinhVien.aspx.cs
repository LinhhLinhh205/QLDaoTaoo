using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLDaoTao.Models;

namespace QLDaoTao
{
    public partial class QLSinhVien : System.Web.UI.Page
    {
        KhoaDAO khDao = new KhoaDAO();
        SinhVienDao svDao = new SinhVienDao();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btThem_Click(object sender, EventArgs e)
        {
            string masv = txtMaSV.Text;
            string hosv = txtHoSv.Text;
            string tensv = txtTenSV.Text;
            Boolean gioitinh = rdNam.Checked ? true : false;
            DateTime ngaysinh = DateTime.Parse(txtNgaysinh.Text);
            string noisinh = txtNgaysinh.Text;
            string diachi = txtDiaChi.Text;

            string makh = ddlMakhoa.SelectedValue;
            //them sinh vien vao CSDL
            svDao.Insert(masv, hosv, tensv, gioitinh, ngaysinh, noisinh, diachi, makh);
            //lien ket lai du lieu cho gvSinhVien
            gvSinhVien.DataSource = svDAO.getAll();
            gvSinhVien.DataBind();
        }
    }
}