public class Day25H1A {
    public void Resume(){
        string pdfContent=' <h1>Resume</h1> <h2>Shashank</h2> <hr /> <br> <p class="head">Interests</p> <ul>    <li>Programming</li> <li>Computer science</li> </ul>';
    Candidate__c cr = new Candidate__c(Last_Name__c='Rayes',B_Tech_Discipline__c='CSE');
    insert cr;
    Attachment attachmentpdf = new Attachment();
    attachmentpdf.ParentId = cr.id;
    attachmentpdf.Name = 'Resume' + '.pdf';
	attachmentpdf.body = blob.toPdf(pdfContent);
	insert attachmentpdf;
        
    }
    
   }