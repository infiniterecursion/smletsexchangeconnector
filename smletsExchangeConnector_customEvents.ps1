<#
.SYNOPSIS
This script accompanies the smletsExchangeConnector script, in order to provide a stable way to include custom event handler
functions that are proprietary to your environment.

The smletsExchangeConnector script provides SCSM Exchange Connector functionality through PowerShell.

.DESCRIPTION
The functions in this script are empty by default but can handle events within the smlets Exchange Connector script.
They are intended to allow custom, proprietary functions to be inserted at critical points throughout the script, without
requiring them to be merged in each time the script is updated.

These functions are designed to use the variables and functions in the main script without passing them in as arguments.
As a consequence, variables in the main script can be read, but they cannot be altered here.  This can be done but would require
customizing the corresponding function call in the main script.

.NOTES
Author: Adam Dzyacky
Contributors: Martin Blomgren, Leigh Kilday, Tom Hendricks
Reviewers: Tom Hendricks, Brian Weist
Inspiration: The Cireson Community, Anders Asp, Stefan Roth, and (of course) Travis Wright for SMlets examples
Requires: PowerShell 4+, SMlets, and Exchange Web Services API (already installed on SCSM workflow server by virtue of stock Exchange Connector).
    3rd party option: If you're a Cireson customer and make use of their paid SCSM Portal with HTML Knowledge Base this will work as is
        if you aren't, you'll need to create your own Type Projection for Change Requests for the Add-ChangeRequestComment
        function. Navigate to that function to read more. If you don't make use of their HTML KB, you'll want to keep $searchCiresonHTMLKB = $false
    Signged/Encrypted option: .NET 4.5 is required to use MimeKit.dll
Misc: The Release Record functionality does not exist in this as no out of box (or 3rd party) Type Projection exists to serve this purpose.
    You would have to create your own Type Projection in order to leverage this.
#>

function Invoke-BeforeConnect {
  # This function occurs immediately before the connection to EWS is made

}

function Invoke-OnOpenInbox {
  # This function occurs after the inbox is opened but before individual messages are read.

}

function Invoke-BeforeProcessEmail {
  # This function occurs after an email message is open, but before it is processed.
  
}

function Invoke-AfterProcessEmail {
  # This function occurs after an email message has been fully processed, before the next message is opened.
  
}

function Invoke-BeforeProcessSignedEmail {
  # This function occurs before a digitally signed email message is opened, and before the "normal" email open event
  
}

function Invoke-AfterProcessSignedEmail {
  # This function occurs after a digitally signed email message is processed, and after the "normal" email processed event

}

function Invoke-BeforeProcessEncryptedEmail {
  # This function occurs before an encrypted email message is opened, and before the "normal" email open event
  
}

function Invoke-AfterProcessEncryptedEmail {
  # This function occurs after an encrypted email message is processed, and after the "normal" email processed event
  
}

function Invoke-BeforeProcessAppointment {
  # This function occurs after an appointment is open, but before it is processed.
  
}

function Invoke-AfterProcessAppointment {
  # This function occurs after an appointment has been fully processed, before the next message is opened.
}

function Invoke-BeforeProcessCancelMeeting {
  # This function occurs after an appointment is open, but before it is processed.
  
}

function Invoke-AfterProcessCancelMeeting {
  # This function occurs after an appointment is fully processed, before the next message is opened.
  
}

function Invoke-BeforeCreateAnyWorkItem {
  # This function occurs at the beginning of the new work item function.
  
}

function Invoke-AfterCreateIR {
  # This function occurs after a new incident work item is created.
  
}

function Invoke-AfterCreateSR {
  # This function occurs after a new service request work item is created.
  
}

function Invoke-AfterCreatePR {
  # This function occurs after a new problem work item is created.
  
}

function Invoke-AfterCreateCR {
  # This function occurs after a new change request work item is created.
  
}

function Invoke-AfterCreateAnyWorkItem {
  # This function occurs after any new work item is created.
  
}

function Invoke-BeforeUpdateAnyWorkItem {
  # This function occurs at the beginning of the update work item function.
  
}

function Invoke-AfterUpdateIR {
  # This function occurs after an incident is updated.
  
}

function Invoke-AfterUpdateSR {
  # This function occurs after a service request is updated.
  
}

function Invoke-AfterUpdatePR {
  # This function occurs after a problem is updated.
  
}

function Invoke-AfterUpdateCR {
  # This function occurs after a change request is updated.
  
}

function Invoke-AfterUpdateRA {
  # This function occurs after a review activity is updated.
  
}

function Invoke-AfterUpdateMA {
  # This function occurs after a manual activity is updated.
  
}

function Invoke-AfterUpdateAnyWorkItem {
  # This function occurs after any work item is updated with a comment or by a token.
  
}

function Invoke-AfterAcknowledge {
  # This function occurs after the acknowledge token is applied to a work item.
  
}

function Invoke-AfterReactivate {
  # This function occurs after the reactivate token is applied to a work item.
  
}

function Invoke-AfterResolved {
  # This function occurs after the resolved token is applied to a work item.
  
}

function Invoke-AfterClosed {
  # This function occurs after the closed token is applied to a work item.
  
}

function Invoke-AfterHold {
  # This function occurs after the acknowledge token is applied to a work item.
  
}

function Invoke-AfterCancelled {
  # This function occurs after the cancelled token is applied to a work item.
  
}

function Invoke-AfterTake {
  # This function occurs after the acknowledge token is applied to a work item.
  
}

function Invoke-AfterCompleted {
  # This function occurs after the completed token is applied to a work item.
}

function Invoke-AfterSkipped {
  # This function occurs after the skipped token is applied to a manual activity.
}

function Invoke-AfterApproved {
  # This function occurs after the approved token is applied to a review activity.
  
}

function Invoke-AfterApprovedOnBehalf {
  # This function occurs after the approved token is applied to a review activity on behalf of a group.
  
}

function Invoke-AfterRejected {
  # This function occurs after the rejected token is applied to a review activity.
  
}

function Invoke-RejectedOnBehalf {
  # This function occurs after the rejected token is applied to a review activity on behalf of a group.
  
}

function Invoke-BeforeAttachEmail {
  # This function occurs after email attachments are loaded, but before adding them to a work item.
  
}

function Invoke-AfterAttachEmail {
  # This function occurs after an email is attached to a work item.
  
}

function Invoke-BeforeAttachFiles {
  # This function occurs after email attachments are loaded, but before any files are attached to a work item.
  
}

function Invoke-AfterAttachFiles {
  # This function occurs after file(s) have been attached to a work item.
  
}

function Invoke-AfterUserCreatedInCMDB {
  # This function occurs after a user has been created in the CMDB from an external email address.
  
}

function Invoke-BeforeSetCoreScsmAnnouncement {
  # This function occurs before an announcement is created in SCSM.
  
}

function Invoke-AfterSetCoreScsmAnnouncement {
  # This function occurs after an announcement is created in SCSM.
  
}

function Invoke-BeforeSetPortalAnnouncement {
  # This function occurs before an announcement is created in the Cireson Portal.
  
}

function Invoke-AfterSetPortalAnnouncement {
  # This function occurs after an announcement is created in the Cireson Portal.
  
}