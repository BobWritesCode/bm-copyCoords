let isDebug = false;

document.onreadystatechange = () => {
  if (document.readyState === 'complete') {
    window.addEventListener('message', function (e) {
      switch (e.data.action) {
        case 'copy':
          DebugLog('NUI message received: ^3copy');
          CopyToClipboard(String(e.data.toCopy));
          break;
        default:
          break;
      }
    });
  }
};

function CopyToClipboard(str) {
  DebugLog('JS function: ^3CopyToClipboard()');
  const el = document.createElement('textarea');
  el.value = str;
  document.body.appendChild(el);
  el.select();
  document.execCommand('copy');
  document.body.removeChild(el);
  DebugLog('Should have copied text', str);
}

function DebugLog(str = null, _str2 = null) {
  if (!isDebug) {
    return;
  }
  if (str && _str2) {
    let str2 = String(_str2);
    console.log('^4[Debug] ^2' + str + ' ^3' + str2 + '^7');
  }
  if (str && !_str2) {
    console.log('^4[Debug] ^2' + str + '^7');
  }
}
