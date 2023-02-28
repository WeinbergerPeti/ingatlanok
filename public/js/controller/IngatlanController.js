import AdatFeldolgozModel from "../model/AdatFeldolgozModel.js";
import IngatlansView from "../view/IngatlansView.js";

class IngatlanController{
    constructor(){
        const token = $(`meta[name="csrf-token"]`).attr("content");
        const adatFeldolgozMdel = new AdatFeldolgozModel;

        this.vegpont = "/ingatlans";
        adatFeldolgozMdel.adatBe(this.vegpont, this.ingatlanAdatok);
    }
    ingatlanAdatok(tomb){
        const szuloelem = $("article")
        new IngatlansView(tomb, szuloelem);
    }
}

export default IngatlanController;
