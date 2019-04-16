<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>L� l?ch CB-GV</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/custom.css">
    <script type="text/javascript" src="./javascript/datatime.js"></script>
</head>
<body>

<!--Tag -->
<div class="row">
    <div class="container">
        <ul class="nav nav-tabs">
            <li class="active"><a href="#thongtinchung"  data-toggle="tab">Th�ng tin chung</a></li>
            <li><a href="#quatrinhdaotao" data-toggle="tab">Qu� tr�nh ?�o t?o</a></li>
            <li><a href="#quatrinhcongtac" data-toggle="tab">Qu� tr�nh c�ng t�c</a></li>
            <li><a href="#trinhdongoaingu" data-toggle="tab">Tr�nh ?? ngo?i ng?</a></li>
        </ul>
        <div class="tab-content">
            <div id="thongtinchung" class="tab-pane fade in active">
                <div class="col-md-3" style="background-color: lavender">
                    <div>
                        <label>M� CB-GV</label>
                        <input type="text" class="form-control" id="idcbgv">
                    </div>
                    <div>
                        <label>H? v� t�n</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                    <div>
                        <label>Ng�y sinh</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                    <div>
                        <label>Gi?i t�nh</label>
                        <form>
                            <label class="radio-inline">
                                <input type="radio" name="optradio" checked>Nam
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="optradio">N?
                            </label>
                        </form>
                    </div>
                </div>
                <div class="col-md-3" style="background-color: lavender">
                    <div>
                        <label>H?c h�m</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                    <div>
                        <label>H?c v?</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                    <div>
                        <label>N?m ??t h?c h�m</label>
                        <input type="text" id="datepicker">
                    </div>
                    <div>
                        <label>N?m ??t h?c v?</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                </div>
                <div class="col-md-3" style="background-color: lavender">
                    <div>
                        <label>Ch?c danh nghi�n c?u</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                    <div>
                        <label>S? ?i?n tho?i nh� ri�ng</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                    <div>
                        <label>S? ?i?n tho?i C? quan</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                    <div>
                        <label>S? ?i?n tho?i di ??ng</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                </div>
                <div class="col-md-3" style="background-color: lavender">
                    <div>
                        <label>??a ch? Email</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                    <div>
                        <label>L?nh v?c chuy�n m�n s�u</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                </div>
            </div>
            <div id="quatrinhdaotao" class="tab-pane fade">
                <div class="col-md-3" style="background-color: lavender">
                    <div>
                        <label>M� ?�o t?o</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                    <div>
                        <label>B?c ?�o t?o</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                </div>
                <div class="col-md-3" style="background-color: lavender">
                    <div>
                        <label>N?i ?�o t?o</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                    <div>
                        <label>Chuy�n ngh�nh</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                </div>
                <div class="col-md-3" style="background-color: lavender">
                    <div>
                        <label>N?m t?t nghi?p</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                </div>
            </div>
            <div id="quatrinhcongtac" class="tab-pane fade">
                <div class="col-md-3" style="background-color: lavender">
                    <div>
                        <label>M� qu� tr�nh</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                    <div>
                        <label>Th?i gian c�ng t�c</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                </div>
                <div class="col-md-3" style="background-color: lavender">
                    <div>
                        <label>V? tr� c�ng t�c</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                    <div>
                        <label>L?nh v?c c�ng t�c</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                </div>
                <div class="col-md-3" style="background-color: lavender">
                    <div>
                        <label>C? quan c�ng t�c</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                </div>
            </div>
            <div id="trinhdongoaingu" class="tab-pane fade">
                <div class="col-md-3" style="background-color: lavender">
                    <div>
                        <label>M� ngo?i ng?</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                    <div>
                        <label>T�n ngo?i ng?</label>
                        <input type="text" class="form-control" id="idct">
                    </div>
                </div>
                <div class="col-md-3" style="background-color: lavender">
                    <div>
                        <label>Tr�nh ?? nghe</label>
                        <select class="company" id="nghe">
                            <option value="T?t"><strong>T?t</strong></option>
                            <option value="Kh�">Kh�</option>
                            <option value="Trung B�nh">Trung B�nh</option>
                        </select>
                    </div>
                    <div>
                        <label>Tr�nh ?? n�i</label>
                        <select class="company">
                            <option value="T?t"><strong>T?t</strong></option>
                            <option value="Kh�">Kh�</option>
                            <option value="Trung B�nh">Trung B�nh</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-3" style="background-color: lavender">
                    <div>
                        <label>Tr�nh ?? ??c</label>
                        <select class="company">
                            <option value="T?t"><strong>T?t</strong></option>
                            <option value="Kh�">Kh�</option>
                            <option value="Trung B�nh">Trung B�nh</option>
                        </select>
                    </div>
                    <div>
                        <label>Tr�nh ?? vi?t</label>
                        <select class="company">
                            <option value="T?t"><strong>T?t</strong></option>
                            <option value="Kh�">Kh�</option>
                            <option value="Trung B�nh">Trung B�nh</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row" id="btnthemql">
        <div class="col-lg-1">
            <button type="button" class="btn btn-primary">L?u th�m</button>
        </div>
        <div class="col-lg-1">
            <button type="button" class="btn btn primary">Quay l?i</button>
        </div>
    </div>
</body>
</html>
