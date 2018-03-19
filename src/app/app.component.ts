import { Component } from '@angular/core';
import { Http, Response, RequestOptions, Headers } from '@angular/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  public quote: String = 'Click me for more details...';
  constructor(public http: Http) { }

  getQuoteOfTheDay() {
    let resp;
    let url = 'http://quotes.rest/qod';
    this.http.get(url).subscribe(res => 
      {
        resp = res.json();
        this.quote = resp.contents.quotes[0].quote;
      });
  }
}
