function toast({
    tiltle = '',
    message = '',
    type = 'info',
    duration = 3000
}) {
    const main = document.getElementById('toast');
    if (main) {
        const toast = document.createElement('div');

        //auto remove
        const autoremove = setTimeout(function () {
            main.removeChild(toast);
        }, duration + 1000);

        //remove click 
        toast.onclick = function (e) {
            if (e.target.closest('.toast__close')) {
                main.removeChild(toast);
                clearTimeout(autoremove);
            }
        };
        const icons = {
            success: 'fas fa-check-circle',
            warning: 'fas fa-info-circle',
            info: 'fas fa-info-circle'
        };
        const icon = icons[type];
        const delay = (duration / 1000).toFixed(2);

        toast.classList.add('toast1', `toast--${type}`);
        toast.style.animation = `slideLeft ease .3s, fadeOut linear 1s ${delay}s forwards`;
        toast.innerHTML = `
                    <div class="toast__icon">
                        <i class="${icon}"></i>
                    </div>
                    <div class="toast__body">
                        <h3 class="toast__title">${tiltle}</h3>
                        <p class="toast__msg">${message}</p>
                    </div>
                    <div class="toast__close">
                         <i class="fas fa-times"></i>
                    </div>
                `;
        main.appendChild(toast);

    }
}



function showCompleteToast() {
    toast({
        tiltle: 'Success',
        message: 'Đã hoàn tất Check-in',
        type: 'success',
        duration: 3000
    })
}
function showSuccessToast() {
    toast({
        tiltle: 'Success',
        message: 'Chech-in thành công vào trận đâu',
        type: 'success',
        duration: 3000
    })
}

function showFailToast() {
    toast({
        tiltle: 'Fail',
        message: 'Sai format thứ hạng',
        type: 'warning',
        duration: 3000
    })
}

function showNotEnoughToast() {
    toast({
        tiltle: 'Fail',
        message: 'Số lượng checked-in quá ít',
        type: 'warning',
        duration: 3000
    })
}
function showErrorToast() {
    toast({
        tiltle: 'Lỗi',
        message: '...',
        type: 'info',
        duration: 3000
    })
}

var mes = document.getElementById('toastmes').innerHTML;
if (mes === 'fail') {
    showFailToast();
} else if (mes === 'complete') {
    showCompleteToast();
} else if (mes === 'success') {
    showSuccessToast();
} else if (mes === 'notEnough') {
    showNotEnoughToast();
}

