class IngatlanView {
    #elem;
    constructor(elem, szuloelem) {
        console.log("IngatlanView Hali!");
        this.#elem;
        szuloelem.append(`
            <div class="ingatlan">
                <h2>Kategória: ${ingatlan.kategoria}</h2>
                <h2>Leírás: ${ingatlan.leiras}</h2>
                <h2>Hirdetés Dátuma: ${ingatlan.hirdetes_datuma}</h2>
                <h2>Tehermentes: ${ingatlan.tehermentes}</h2>
                <img src="${ingatlan.kep_URL}">
            </div>
        `)
    }
}

export default IngatlanView;