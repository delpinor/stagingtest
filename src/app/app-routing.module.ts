import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { SaludoComponent } from './saludo/saludo.component';

const routes: Routes = [
  { path: "", component: HomeComponent },
  { path: "/home", component: HomeComponent },
  { path: "/saludos", component: SaludoComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
