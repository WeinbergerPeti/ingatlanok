class IngatlanView {
    #elem;
    constructor(elem, szuloelem) {
        console.log("IngatlanView Hali!");
        this.#elem=elem;
        szuloelem.append(`
        <div class="ingatlan">
            <h2>Kategória: <br>${elem.kategoria}</h2>
            <h2>Leírás: <br>${elem.leiras}</h2>
            <h2>Hirdetés Dátuma: <br>${elem.hirdetes_datuma}</h2>
            <h2>Tehermentes: <br>${elem.tehermentes}</h2>
            <img src="${elem.kep_URL}">
        </div>
        `)
    }
}

export default IngatlanView;