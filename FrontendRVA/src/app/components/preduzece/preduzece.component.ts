import { Component, OnDestroy, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatTableDataSource } from '@angular/material/table';
import { Subscription } from 'rxjs';
import { Preduzece } from 'src/app/models/preduzece';
import { PreduzeceService } from 'src/app/services/preduzece.service';
import { PreduzeceDialogComponent } from '../dialogs/preduzece-dialog/preduzece-dialog.component';


@Component({
  selector: 'app-preduzece',
  templateUrl: './preduzece.component.html',
  styleUrls: ['./preduzece.component.css']
})
export class PreduzeceComponent implements OnInit, OnDestroy {
 
  displayedColumns = ['id', 'naziv', 'pib', 'sediste', 'opis', 'actions'];
  dataSource: MatTableDataSource<Preduzece>;
  subscription: Subscription;

  constructor(private preduzeceService: PreduzeceService, private dialog: MatDialog) { }
    
    ngOnDestroy(): void {
      this.subscription.unsubscribe();
    }
  
    ngOnInit(): void {
      this.loadData();
    }
  
    public loadData() {
      this.subscription = this.preduzeceService.getAllPreduzeca().subscribe(
        data => {
            this.dataSource = new MatTableDataSource(data);
        }
      ),
      (error: Error) => {
        console.log(error.name + ' ' + error.message);
      }
    }
  
    public openDialog(flag: number, id?: number, naziv?: string, pib?: number, sediste?: string, 
                      opis?: string ) : void {
  
      const dialogRef = this.dialog.open(PreduzeceDialogComponent, {data: {id, naziv, pib, sediste, opis}});
  
      dialogRef.componentInstance.flag = flag;
      dialogRef.afterClosed().subscribe(res => {
        if(res===1)
        {
          this.loadData();
        }
      })
    }
  
  }