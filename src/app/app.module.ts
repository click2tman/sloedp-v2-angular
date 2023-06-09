import { HttpModule } from '@angular/http';
import { HttpClientModule } from '@angular/common/http';
import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';

import { NgbModule } from '@ng-bootstrap/ng-bootstrap';

// Pages
import { MyApp } from './app.component';
import { SplashPageModule } from '../pages/splash/splash.module';
import { PresidentPageModule } from '../pages/president/president.module';
import { ParliamentPageModule } from '../pages/parliament/parliament.module';
import { MayorPageModule } from '../pages/mayor/mayor.module';
import { ChairpersonPageModule } from '../pages/chairperson/chairperson.module';
import { CouncilorPageModule } from '../pages/councilor/councilor.module';
import { VillageHeadmanPageModule } from '../pages/village-headman/village-headman.module';
import { PartyProfilePageModule } from '../pages/party-profile/party-profile.module';
import { CandidateProfilePageModule } from '../pages/candidate-profile/candidate-profile.module';
import { AboutPageModule } from '../pages/about/about.module';

// Components
import { ComponentsModule } from '../components/components.module'

// Providers
import { DataProvider } from '../providers/data/data';

@NgModule({
  declarations: [
  // App
    MyApp
  ],
  imports: [
    BrowserModule,
    HttpModule,
    HttpClientModule,
    IonicModule.forRoot(MyApp),
    NgbModule.forRoot(),
    SplashPageModule,
    PresidentPageModule,
    ParliamentPageModule,
    MayorPageModule,
    ChairpersonPageModule,
    CouncilorPageModule,
    VillageHeadmanPageModule,
    PartyProfilePageModule,
    CandidateProfilePageModule,
    AboutPageModule,
    ComponentsModule,
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    DataProvider
  ]
})
export class AppModule {}
