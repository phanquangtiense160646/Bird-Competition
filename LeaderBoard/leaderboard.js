console.clear();

const tableRow = document.querySelectorAll(".list__row");
const overlay = document.querySelector(".overlay");
const sidebar = document.querySelector(".sidebar");
const closeOverlayBtn = document.querySelector(".button--close");

const sidebarClose = () => {
	sidebar.classList.remove("is-open");
	overlay.style.opacity = 0;
	setTimeout(() => {
		overlay.classList.remove("is-open");
		overlay.style.opacity = 1;
	}, 300);
};

tableRow.forEach(tableRow => {
	tableRow.addEventListener("click", function() {
		overlay.style.opacity = 0;
		overlay.classList.add("is-open");
		sidebar.classList.add("is-open");
		setTimeout(() => {
			overlay.style.opacity = 1;
		}, 100);
		
		// Sidebar content
		const sidebarBody = document.querySelector(".sidebar__body");
		sidebarBody.innerHTML = '';
		
		const driverPlace = this.querySelector(".list__cell:nth-of-type(1) .list__value").innerHTML;
		const birdName = this.querySelector(".list__cell:nth-of-type(2) .list__value").innerHTML;
		const trainer = this.querySelector(".list__cell:nth-of-type(3) .list__value").innerHTML;
		const birdPoint = this.querySelector(".list__cell:nth-of-type(4) .list__value").innerHTML;
		const driverImage = this.dataset.image;
		const win = this.dataset.nationality;
		const lose = this.dataset.dob;
		const tie = this.dataset.country;
		
		const newDriver = document.createElement('div');
		newDriver.classList = 'driver';
		
		const driverContent = document.createElement('div');
		driverContent.classList = 'driver__content';
		
		const profile = document.createElement('div');
		profile.classList = 'driver__image';
		profile.style.backgroundImage = `url('${driverImage}')`;
		newDriver.appendChild(profile);
		
		const birdTitle = document.createElement('div');
		birdTitle.classList = 'driver__title';
		birdTitle.innerHTML = birdName;
		driverContent.appendChild(birdTitle);
		
		const driverInfo = document.createElement('div');
		driverInfo.innerHTML = `
		<table class="driver__table">
			<tbody>
				<tr>
					<td><small>Trainer:</small></td>
					<td>${trainer}</td>
				</tr>
                <tr>
                <td><small>Điểm:</small></td>
                <td>${birdPoint}</td>
            </tr>
				<tr>
					<td><small>Thắng:</small></td>
					<td>${win}</td>
				</tr>
				<tr>
					<td><small>Thua:</small></td>
					<td>${lose}</td>
				</tr>
				<tr>
					<td><small>Hòa:</small></td>
					<td>${tie}</td>
				</tr>
			
			</tbody>
		</table>`;
		driverContent.appendChild(driverInfo);
		
		newDriver.appendChild(driverContent);
		sidebarBody.appendChild(newDriver);
		
	});
});

closeOverlayBtn.addEventListener("click", function() {
	sidebarClose();
});

overlay.addEventListener("click", function() {
	sidebarClose();
});