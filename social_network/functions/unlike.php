<?php
include "init.php";

$post_id = clean($_GET['post_id']);

$query = "SELECT unlikes FROM posts WHERE id=$post_id";
$result = query($query);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $unlikes = $row['unlikes'];
    $unlikes += 1;
}

$sql = "UPDATE posts SET unlikes=$unlikes WHERE id=$post_id";

confirm(query($sql));

echo $unlikes;