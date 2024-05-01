// src/app/table/table.component.ts

import { Component } from '@angular/core';
import { Customer } from '../data.model';

@Component({
  selector: 'app-table',
  templateUrl: './table.component.html',
  styleUrl: './table.component.scss',
})
export class TableComponent {
  customers: Customer[] = [];

  constructor() {}

  ngOnInit() {
    this.getAllCustomers();
  }

  applyCreditCard(id: number) {
    console.log(id);
  }

  filterByName(name: string) {
    name = name.toLowerCase().trim();
    this.getAllCustomers();
    if (name !== '') {
      this.customers = this.customers.filter((customer: Customer) =>
        customer.name.toLowerCase().includes(name)
      );
    }
  }

  getAllCustomers() {
    this.customers = [
      {
        id: 1,
        name: 'John Doe',
        age: 20,
        income: 1000,
      },
      {
        id: 2,
        name: 'Lionel Messi',
        age: 17,
        income: 3000,
      },
      {
        id: 3,
        name: 'Jane Doe',
        age: 21,
        income: 2999,
      },
      {
        id: 4,
        name: 'Jamal Musiala',
        age: 18,
        income: 3001,
      },
      {
        id: 5,
        name: 'Jacinda Ardern',
        age: 30,
        income: 5000,
      },
    ];
  }
}
