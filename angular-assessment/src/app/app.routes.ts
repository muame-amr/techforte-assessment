import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouterModule, Routes } from '@angular/router'; // Import RouterModule and Routes
import { AppComponent } from './app.component';
import { TableComponent } from './table/table.component';

export const routes: Routes = [
  { path: '', redirectTo: '/table', pathMatch: 'full' },
  { path: 'table', component: TableComponent },
];

@NgModule({
  declarations: [TableComponent],
  imports: [BrowserModule, RouterModule.forRoot(routes)],
  providers: [],
})
export class AppModule {}
