import { Component, OnDestroy, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatTableDataSource } from '@angular/material/table';
import { Subscription } from 'rxjs';
import { Preduzece } from 'src/app/models/preduzece';
import { Sektor } from 'src/app/models/sektor';
import { SektorService } from 'src/app/services/sektor.service';
import { SektorDialogComponent } from '../dialogs/sektor-dialog/sektor-dialog.component';

@Component({
  selector: 'app-sektor',
  templateUrl: './sektor.component.html',
  styleUrls: ['./sektor.component.css']
})
export class SektorComponent implements OnInit, OnDestroy {

  displayedColumns = ['id', 'naziv', 'oznaka', 'preduzece', 'actions'];
  dataSource: MatTableDataSource<Sektor>;
  subscription: Subscription;

  constructor(private sektorService: SektorService, private dialog: MatDialog) { }

  ngOnDestroy(): void {
    this.subscription.unsubscribe();
  }

  ngOnInit(): void {
    this.loadData();
  }

  public loadData() {
    this.subscription = this.sektorService.getAllSektori().subscribe(
      data => {
          this.dataSource = new MatTableDataSource(data);
      }
    ),
    (error: Error) => {
      console.log(error.name + ' ' + error.message);
    }
  }

  public openDialog(flag: number, id?: number, naziv?: string, oznaka?: string, 
    preduzece?: Preduzece ) : void {

    const dialogRef = this.dialog.open(SektorDialogComponent, {data: {id, naziv, oznaka, preduzece}});

    dialogRef.componentInstance.flag = flag;
    dialogRef.afterClosed().subscribe(res => {
      if(res===1)
      {
      this.loadData();
      }
    })
  }

  selectRow(row: any) {
    console.log(row);
  }

}
