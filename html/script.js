document.onreadystatechange = () => {
  if (document.readyState === 'complete') {
    window.addEventListener('message', function (e) {
      switch (e.data.action) {
        case 'copy':
          $('#copyThis').val(e.data.toCopy)
          var copyText = $('#copyThis')
          copyText.select();
          document.execCommand("copy");
          break;
        default:
          break;
      }
    });
  }
};
