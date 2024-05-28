const allDropdown = document.querySelectorAll('#menu .side-dropdown');

allDropdown.forEach(item=> {
    const  a = item.parentElement.querySelector('a:first-child');
    a.addEventListener('click',function (e) {
        e.preventDefault();

        if(!item.classList.contains('active')){
            allDropdown.forEach(i=> {
                const alink = i.parentElement.querySelector('a:first-child');
                alink.classList.remove('active');
                i.classList.remove('show');

            });
        }

        this.classList.toggle('active');
        item.classList.toggle('show');
    });
});