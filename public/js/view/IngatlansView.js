import IngatlanView from "./IngatlanView.js";

class IngatlansView {
    constructor(tomb, szuloelem){
        console.log("IngatlansView Hali!");
        szuloelem.html(`
        <div id="ingatlanok">
        </div>
        `)
        this.divElem = szuloelem.children("div:last-child");
        tomb.forEach(adat => {
            const adatom = new IngatlanView(adat, this.divElem);
        });
    }
}

export default IngatlansView