<?php
require_once 'models/Pegawai.php';
$ar_agama = ['Islam', 'Kristen Katholik', 'Kristen Protestan', 'Hindu', 'Budha', 'Khonghucu'];
$obj = new Pegawai();
$rs = $obj->dataDivisi();
//tangkap request data lama
$id = $_REQUEST['id'];
$edit_data = $obj->getPegawai($id);
?>

<h3>Form Pegawai</h3>

<form class="was-validated" method="POST" action="controllers/pegawaiController.php">
    <div class="form-group row">
        <label for="nip" class="col-4 col-form-label">NIP</label>
        <div class="col-8">
            <div class="input-group">
                <div class="input-group-prepend">
                    <div class="input-group-text">
                        <i class="fa fa-address-card"></i>
                    </div>
                </div>
                <input id="nip" name="nip" value="<?= $edit_data['nip'] ?>" type="text" class="form-control" required="required" autocomplete="off">
                <div class="invalid-feedback">NIP belum dimasukan !</div>
                <div class="valid-feedback">Good</div>
            </div>
        </div>
    </div>
    <div class="form-group row">
        <label for="nama" class="col-4 col-form-label">Nama</label>
        <div class="col-8">
            <input id="nama" name="nama" value="<?= $edit_data['nama'] ?>" placeholder="Nama Anda!" type="text" class="form-control" required="required" autocomplete="off">
            <div class="invalid-feedback">Nama belum dimasukan !</div>
            <div class="valid-feedback">Good</div>
        </div>
    </div>
    <div class="form-group row">
        <label for="email" class="col-4 col-form-label">Email</label>
        <div class="col-8">
            <input id="email" name="email" value="<?= $edit_data['email'] ?>" placeholder="Email Anda!" type="text" class="form-control" required="required" autocomplete="off">
            <div class="invalid-feedback">Alamat email belum dimasukan !</div>
            <div class="valid-feedback">Good</div>
        </div>
    </div>
    <div class="form-group row ">
        <label class="col-4">Agama</label>
        <div class="col-8">
            <?php
            $no = 0;
            foreach ($ar_agama as $agama) {
                //edit agama
                $cek_agama = ($edit_data['agama'] == $agama) ? "checked" : "";
            ?>
                <div class="custom-control custom-radio custom-control-inline">
                    <input name="agama" id="agama_<?= $no ?>" type="radio" class="custom-control-input" value="<?= $agama ?>" <?= $cek_agama ?> required="required">
                    <label for="agama_<?= $no ?>" class="custom-control-label"><?= $agama ?></label>
                </div>
            <?php $no++;
            } ?>
        </div>
    </div>
    <div class="form-group row">
        <label for="divisi" class="col-4 col-form-label">Divisi</label>
        <div class="col-8">
            <select id="divisi" name="divisi" class="custom-select" required="required">
                <option value="">-- Pilih Divisi --</option>
                <?php
                foreach ($rs as $p) {
                    //edit divisi
                    $sel_divisi = ($edit_data['iddivisi'] == $p['id']) ? "selected" : "";
                ?>
                    <option value="<?= $p['id'] ?>" <?= $sel_divisi ?>> <?= $p['nama'] ?> </option>
                <?php } ?>
            </select>
            <div class="invalid-feedback">Divisi belum ditentukan !</div>
            <div class="valid-feedback">Good</div>
        </div>
    </div>
    <div class="form-group row">
        <label for="foto" class="col-4 col-form-label">Foto</label>
        <div class="col-8">
            <input id="foto" name="foto" value="<?= $edit_data['foto'] ?>" placeholder="Foto Anda!" type="text" class="form-control" autocomplete="off">
        </div>
    </div>
    <div class="form-group row">
        <div class="offset-4 col-8">
            <button name="proses" type="submit" value="edit" class="btn btn-primary"><i class="far fa-edit"></i> Edit</button>
            <input type="hidden" name="aidi" value="<?= $id ?>">
        </div>
    </div>
</form>