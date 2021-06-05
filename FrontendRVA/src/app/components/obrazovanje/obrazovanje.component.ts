import { Component, OnInit, OnDestroy } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatTableDataSource } from '@angular/material/table';
import { Subscription } from 'rxjs';
import { Obrazovanje } from 'src/app/models/obrazovanje';
import { ObrazovanjeService } from 'src/app/services/obrazovanje.service';
import { ObrazovanjeDialogComponent } from '../dialogs/obrazovanje-dialog/obrazovanje-dialog.component';

@Component({
  selector: 'app-obrazovanje',
  templateUrl: './obrazovanje.component.html',
  styleUrls: ['./obrazovanje.component.css']
})
export class ObrazovanjeComponent implements OnInit, OnDestroy {

  displayedColumns = ['id', 'naziv', 'stepenStrucneSpreme', 'opis', 'actions'];
  dataSource: MatTableDataSource<Obrazovanje>;
  subscription: Subscription;
  
    constructor(private obrazovanjeService: ObrazovanjeService, private dialog: MatDialog) { }
    
    ngOnDestroy(): void {
      this.subscription.unsubscribe();
    }
  
    ngOnInit(): void {
      this.loadData();
    }
  
    public loadData() {
      this.subscription = this.obrazovanjeService.getAllObrazovanja().subscribe(
        data => {
            this.dataSource = new MatTableDataSource(data);
        }
      ),
      (error: Error) => {
        console.log(error.name + ' ' + error.message);
      }
    }
  
    public openDialog(flag: number, id?: number, naziv?: string, stepenStrucneSpreme?: string, 
                      opis?: string ) : void {
  
      const dialogRef = this.dialog.open(ObrazovanjeDialogComponent, {data: {id, naziv, stepenStrucneSpreme, opis}});
  
      dialogRef.componentInstance.flag = flag;
      dialogRef.afterClosed().subscribe(res => {
        if(res===1)
        {
          this.loadData();
        }
      })
    }
  
  }