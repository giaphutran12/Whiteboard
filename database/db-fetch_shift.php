<?php
include "db.php";

//old code, doesn't include cell or comment
// $sql = "SELECT * FROM shift ORDER BY shiftName DESC";

//new code, does include cell and comment (aka GOATED). Date added:08/26/2024. Version 4.0.0
//Joined shift table with person table to get information from both tables
$sql = "
    SELECT shiftID,shiftName, fieldTechName,
            updateShiftDate,comment,cell
    FROM shift
    LEFT JOIN person
    ON fieldTechName=name ORDER BY shiftID
    ";
//end of new code

$result = mysqli_query($conn, $sql);
$numRows = mysqli_num_rows($result);

//new code to add the row TTG technician and Anvil Primary Field Tech to shift table. Date added:09/26/2024. Version 4.0.1
$shiftFoundTTG = false;
$shiftFoundAnvil=false;
// $deleteShiftFound7=false;
// $deleteShiftFound8=false;
// foreach($result as $row){
//     if ($row["shiftID"]==7)
//     {
//         $deleteShiftFound7=true;
//         break;
//     }   
// }
// foreach($result as $row){
//     if ($row["shiftID"]==8){
//         $deleteShiftFound8=true;
//     break;
//     }
// }
// if ($deleteShiftFound7 && $deleteShiftFound8){
// $shiftDelete='DELETE FROM shift WHERE shiftID=7 AND shiftID=8';
// mysqli_query($conn,$shiftDelete);
// }
foreach ($result as $row){
    if ($row["shiftName"]=="Anvil Primary Field Tech"){
        $shiftFoundAnvil=true;
        break;
    }
}
if (!$shiftFoundAnvil){
    $shiftQueryAnvil='INSERT INTO shift (shiftID,shiftName) VALUES (7,"Anvil Primary Field Tech")';
    mysqli_query($conn,$shiftQueryAnvil);
}
foreach ($result as $row) {
    if ($row["shiftName"] == "TTG Technicians") {
        $shiftFoundTTG = true;
        break;
    }
}
if (!$shiftFoundTTG) {
    $shiftQueryTTG='INSERT INTO shift (shiftID,shiftName) VALUES (8,"TTG Technicians")';
     mysqli_query($conn, $shiftQueryTTG);
}


//end of new code

$output = '
    <table class="table table-hover table-striped">
        <thead>
            <tr class="table-success">
                <th> Shift Name </th>
                <th> Field Tech Name </th>
                <th> Last Updated </th>
                <th> Comment</th>
                <th>Cell</th>
                <th> Update </th>
                <th hidden> Delete </th>

            </tr>
        </thead>
        <tbody>
    ';
if ($numRows > 0) {


    foreach ($result as $row) {

        $output .= '
                <tr>
                    <td><span style="white-space:nowrap;"><strong>' . $row["shiftName"] . '</strong></span></td>
                    <td><span style="white-space:nowrap;">' . $row["fieldTechName"] . '</span></td>
                    <td><span style="white-space:nowrap;">' . substr($row["updateShiftDate"], 0, -9) . '</span></td>
                    <td><p>' . $row["comment"] . '</p></td>
                    <td><span style="white-space:nowrap;">' . $row["cell"] . '</span></td>
                    <td>
                        <button type="button" name="update_shift" class="btn btn-success btn-xs update_shift" id="' . $row["shiftID"] . '">
                            <i class="fa fa-chevron-up"></i>
                        </button>
                    </td>
                    <td hidden>
                        <button type="button" name="delete_shift" class="btn btn-danger btn-xs delete_shift" id="' . $row["shiftID"] . '">
                            <i class="fa fa-trash"></i>
                        </button>
                    </td>
                </tr>
            ';
    }
} else {
    $output .= '
            <tr colspan="4" align="center">Data not found</tr>
        ';
}
$output .= '</tbody></table>';

echo $output;
