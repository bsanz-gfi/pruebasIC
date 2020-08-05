var wasist = (function () {
  this.init = function () {
    var flyBtn = document.getElementById('wasist__fly');
    var closeBtn = document.getElementById('wasist__iframe__close');
    var minimizeBtn = document.getElementById('wasist__iframe__minimize');

    var that = this;

    flyBtn.addEventListener('click', function () {
      that.open();
    });

    closeBtn.addEventListener('click', function () {
      that.close();
    });

    minimizeBtn.addEventListener('click', function () {
      that.minimize();
    });
  }

  this.onFlyBtnClick = function () {
    this.open();
  }

  this.open = function () {
    var flyBtn = document.getElementById('wasist__fly');
    flyBtn.style.display = 'none';
    var iframe = document.getElementById('wasist__iframe__wrapper');
    iframe.style.display = 'block';
  }
  
  this.close = function () {
    this.refresh();
    this.minimize();
  }
  
  this.minimize = function () {
    var flyBtn = document.getElementById('wasist__fly');
    flyBtn.style.display = 'block';
    var iframe = document.getElementById('wasist__iframe__wrapper');
    iframe.style.display = 'none';
  }

  this.refresh = function () {
    var iframe = document.getElementById('wasist__iframe__iframe');
    iframe.src = iframe.src;
  }

  return {
    init,
    open,
    close,
    refresh,
    minimize,
  }
})();

wasist.init();
