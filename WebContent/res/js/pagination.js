
    function doPage(opt) {
      if (opt == 'first') {
        if ($("[id='pm.page']").val() != 1) {
          $("[id='pm.page']").val(1);
          $('#form').submit();
        }
      } else if (opt == 'last') {
        if ($("[id='pm.page']").val() != $("[id='pm.totalPage']").val()) {
          $("[id='pm.page']").val($("[id='pm.totalPage']").val());
          $('#form').submit();
        }
      } else if (opt == 'current') {
        if ($('#pageNo').val() != null && $('#pageNo').val() != "" && $('#pageNo').val() != '0')
          if (Number($("#pageNo").val()) <= Number($("[id='pm.totalPage']").val())) {
            $("[id='pm.page']").val($("#pageNo").val());
            $('#form').submit();
          }
      } else if (opt == 'next') {
        if (Number($("[id='pm.page']").val()) + 1 <= Number($("[id='pm.totalPage']").val())) {
          $("[id='pm.page']").val(Number($("[id='pm.page']").val()) + 1);
          $('#form').submit();
        }
      } else if (opt == 'prev') {
        if ($("[id='pm.page']").val() > 1) {
          $("[id='pm.page']").val(Number($("[id='pm.page']").val()) - 1);
          $('#form').submit();
        }
      }
    }
  