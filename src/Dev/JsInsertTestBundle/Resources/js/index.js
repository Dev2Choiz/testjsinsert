$(document).ready(function () {
    "use strict";
    $(".jsValue:eq(0)").html('"' + root.path1.path1.var1 + '"');
    $(".jsValue:eq(1)").html('"' + root.path1.path2.var2 + '"');
    $(".jsValue:eq(2)").html('"' + root.path2.var1 + '"');
    $(".jsValue:eq(3)").html('"' + root.path2.var2 + '"');
    $(".jsValue:eq(4)").html('"' + var1 + '"');
    $(".jsValue:eq(5)").html('"' + var2 + '"');
});
