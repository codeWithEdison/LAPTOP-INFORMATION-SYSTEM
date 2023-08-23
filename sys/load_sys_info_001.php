<?php
//
$sys = fopen("../../../sys/system_file.conf","r") or die("failed to load a file.");
$data = fread($sys,1000);
$data_chunks = explode(",",$data);
$academic_period = $data_chunks[0];
$academic_year = (explode("-",$academic_period))[0];
$academic_term = $data_chunks[1];
?>