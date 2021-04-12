<?php
require_once '../koneksi.php';
require_once '../models/Pegawai.php';

//tangkap request element form
$nip = $_POST['nip'];
$nama = $_POST['nama'];
$email = $_POST['email'];
$agama = $_POST['agama'];
$iddivisi = $_POST['divisi'];
$foto = $_POST['foto'];
$button = $_POST['proses'];

//menyimpan data ke sebuah array
$data = [
    $nip, // ? 1
    $nama, // ? 2
    $email, // ? 3
    $agama, // ? 4
    $iddivisi, // ? 5
    $foto // ? 6
];

//menciptakan object
$obj = new Pegawai();
switch ($button) {
    case 'save':
        $obj->save($data);
        break;

    case 'edit':
        //tangkap hidden field "aidi"
        $data[] = $_POST['aidi'];
        $obj->edit($data);
        break;

    case 'delete':
        //tangkap hidden field "aidi"
        $id[] = $_POST['aidi'];
        $obj->delete($id);
        break;

    default:
        header('location:http://localhost/my_website/index.php?hal=dataPegawai');
        break;
}

//landing page
header('location:http://localhost/my_website/index.php?hal=dataPegawai');