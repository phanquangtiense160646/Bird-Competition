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



function showSuccessToast() {
    toast({
        tiltle: 'Success',
        message: 'Thêm Chim Thành Công',
        type: 'success',
        duration: 5000
    })
}

function showFailToast() {
    toast({
        tiltle: 'Fail',
        message: 'Thêm Chim Thất Bại',
        type: 'warning',
        duration: 8000
    })
}
// function showErrorToast() {
//     toast({
//         tiltle: 'Lỗi',
//         message: 'Chim đã được đăng kí vào cuộc thi này',
//         type: 'info',
//         duration: 8000
//     })
// }

var mes = document.getElementById('toastmes').innerHTML;
if (mes === 'fail') {
    showFailToast();
} else if (mes === 'success') {
    showSuccessToast();
} else{
    console.log("bi loi " + mes);
}

