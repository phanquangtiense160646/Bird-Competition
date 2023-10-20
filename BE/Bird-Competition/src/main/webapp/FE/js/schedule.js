const buyBtn = document.querySelectorAll(".btn-register");
        const schedule = document.querySelector('.schedule-overlay');
        const sidebarClose = () => {
            schedule.classList.remove("is-open");
        };

        buyBtn.forEach(buyBtn => {
            buyBtn.addEventListener("click", function () {
                schedule.classList.add("is-open");

                const body = document.querySelector('.schedule-body');
                body.innerHTML = '';

                const newDriver = document.createElement('div');
                newDriver.classList = 'schedule-detail';

                var date, time, place, tOC, tOB, registerNumber;

                if (this.querySelector(".schedule-value:nth-of-type(1)") !== null) {
                    date = this.querySelector(".schedule-value:nth-of-type(1)").innerHTML;
                    time = this.querySelector(".schedule-value:nth-of-type(2)").innerHTML;
                    place = this.querySelector(".schedule-value:nth-of-type(3)").innerHTML;
                    tOC = this.querySelector(".schedule-value:nth-of-type(4)").innerHTML;
                    tOB = this.querySelector(".schedule-value:nth-of-type(5)").innerHTML;
                    registerNumber = this.querySelector(".schedule-value:nth-of-type(6) span").innerHTML;
                }





                newDriver.innerHTML = `
                <div>
                <h6 class="text-uppercase text-light mb-3 ml-3">${date}</h6>
                <h6 class="text-uppercase text-light mb-3 ml-3"> ${time}</h6>
                <h6 class="text-uppercase text-light mb-3 ml-3"> ${place}</h6>
                <h5 class="text-uppercase text-primary">${tOC}</h5>
                <p class="text-uppercase text-secondary mb-0 ml-3">${tOB}</p>
                <p class="text-uppercase text-secondary mb-0 ml-3" style="display: inline;">
                    số người đăng kí:
                <p class="text-uppercase text-primary mb-0 ml-3" style="display: inline;">${registerNumber}</p>
                </p>
                <h6 class="text-uppercase text-secondary mb-3 ml-3">Chọn chim đăng ký:  
                    <select>
                        <option value="" selected disabled>Chim</option>
                        <option value="lua-chon-1">cuồn font</option>
                        <option value="lua-chon-2">cánh thép</option>
                        <option value="lua-chon-3">pikachu</option>
                    
                    </select>    
                
                </div>

                <a href="" class="btn btn-primary px-5" style="margin-top: 10px;">Đăng kí thi đấu</a>
                `;



                body.appendChild(newDriver);
            })
        })
        const closeOverlayBtn = document.querySelector(".button--close");
        closeOverlayBtn.addEventListener("click", sidebarClose);
