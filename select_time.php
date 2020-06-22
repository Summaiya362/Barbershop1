<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
<option value="">Pilih Waktu Kedatangan</option>
<?php
foreach ($waktu as $waktus) {
	echo "<option>" . $waktus['nama_waktu'] . "</option>";
}
?>