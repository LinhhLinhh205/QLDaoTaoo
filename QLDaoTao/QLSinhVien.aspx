<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLSinhVien.aspx.cs" Inherits="QLDaoTao.QLSinhVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <h2>THÔNG TIN SINH VIÊN</h2>
    <hr />
    <div>
        <button type="button" class="btn btn-info btn-lg" style="margin-bottom: 5px; width: 153px;" data-toggle="modal" data-target="#modalOpenAddButton">Thêm mới</button>
        <!-- Modal -->
        <div class="modal fade" id="modalOpenAddButton" role="dialog">
            <div class="modal-dialog">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4>THÊM MỚI KHOA</h4>
                        <hr>
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="control-label col-md-2">Mã sinh viên</label>
                                <div class="col-md-2">
                                    <asp:TextBox ID="txtMaSV" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2">Họ sinh viên</label>
                                <div class="col-md-2">
                                    <asp:TextBox ID="txtHoSv" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <label class="control-label col-md-2">Tên sinh viên</label>
                                <div class="col-md-2">
                                    <asp:TextBox ID="txtTenSV" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2">Giới tính</label>
                                <div class="col-md-4">
                                    <asp:RadioButton ID="rdNam" runat="server" Text="Nam" CssClass="radio-inline" Checked="true"
                                        GroupName="GT" />
                                    <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" CssClass="radio-inline" GroupName="GT" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2">Ngày sinh</label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtNgaysinh" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>

                                </div>
                                <label class="control-label col-md-2">Nơi sinh</label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtNoiSinh" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2">Địa chỉ</label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2">Chọn khoa</label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddlMaKhoa" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2"></label>
                                <div class="col-md-4">
                                    <asp:Button ID="btThem" runat="server" Text="Thêm Mới" OnClick="btThem_Click" CssClass="btn btn-success" />
                                </div>
                            </div>
                        </div>
                        <div>
                        </div>
                    </div>
                    </div>
                </div>
        </div>
    </div>
    <asp:GridView ID="gvSinhVien" runat="server" AutoGenerateColumns="False" DataSourceID="ods_SinhVien"></asp:GridView>
    <asp:ObjectDataSource ID="ods_SinhVien" runat="server" ></asp:ObjectDataSource>
    </asp:Content>
