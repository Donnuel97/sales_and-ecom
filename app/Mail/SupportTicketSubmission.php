<?php
namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SupportTicketSubmission extends Mailable
{
    use Queueable, SerializesModels;

    public $ticket;

    public function __construct($ticket)
    {
        $this->ticket = $ticket;
    }

    public function build()
    {
        return $this->subject(translate('Support_Ticket_Submission_Confirmation'))
                    ->view('email-templates.support-ticket-submission', ['ticket' => $this->ticket]);
    }
}
