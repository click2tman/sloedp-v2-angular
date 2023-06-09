import { Component, ViewChild, forwardRef } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { HeaderViewComponent } from '../../components/header-view/header-view';
import { DataProvider } from '../../providers/data/data';
/**
 * Generated class for the PartyProfilePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage({segment: 'party/:id', name: "party"})
@Component({
	selector: 'page-party-profile',
	templateUrl: 'party-profile.html',
})
export class PartyProfilePage {
	public party;
	@ViewChild(forwardRef(() => HeaderViewComponent)) headerview: HeaderViewComponent;

	constructor(public navCtrl: NavController, public navParams: NavParams, public dataService: DataProvider) {
		var acronym = navParams.get('id');
		this.party = dataService.getParty(acronym)
	}

	ionViewDidLoad() {
		this.headerview.isGranularityEnabled = false;
	}

	sourceUrl(url) {
		return "assets/imgs/party/" + url;
	}

	colorFilter(color) {
		var default_color = "#999";
		var colors = ["Pink", "Orange", "Green", "Red", "Blue", "Purple", "Yellow"];
		if (!color) return default_color;
		if (color.split(', ').length > 1) {
			return color.split(', ')[0];
		}
		if (colors.indexOf(color.charAt(0).toUpperCase() + color.slice(1)) > -1) {
			return color;
		}
		return "#" + color;
	}
}
