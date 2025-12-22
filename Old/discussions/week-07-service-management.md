# Week 7 Discussion: Service Management Tools and Problem Management

**Posted:** October 3, 2025 6:36 AM  
**Word Count:** 367 words  
**Topic:** Identify common service management tools. Select a service you receive and describe the processes from problem report to resolution. What controls ensure customer satisfaction?

---

## Response

### Service Management Tools and Problem Management Processes

After researching service management tools currently used in the industry, I found several platforms that organizations rely on for ITSM (IT Service Management) implementation. The most common ones include ServiceNow, BMC Remedy, Jira Service Management, and Ivanti. These tools help organizations manage incidents, problems, changes, and service requests in a structured way that aligns with ITIL (Information Technology Infrastructure Library) best practices.

### Real-World Example: Internet Service

For this discussion, I'll use my internet service provider as an example, since I actually had to deal with them recently when my connection dropped.

**Process from Problem Report to Resolution:**

1. **Initial Contact** - I called the support line and went through the automated system that tried basic troubleshooting (restart modem, check cables). When that didn't work, I got connected to a tier-1 technician.

2. **Ticket Creation** - The technician created a trouble ticket in their system, assigning it a unique number. They captured my account info, service address, and problem description.

3. **Initial Diagnosis** - The tier-1 tech ran remote diagnostics and determined the issue was beyond their scope - likely a problem with the line outside my building.

4. **Escalation** - The ticket was escalated to tier-2 technical support and eventually to field services for an onsite visit.

5. **Resolution** - A field technician came out, identified a damaged cable connection at the street junction box, repaired it, and closed the ticket.

6. **Follow-up** - I received an automated survey asking about my experience and whether the problem was resolved.

### Controls for Customer Satisfaction

Several controls should be in place to ensure high customer satisfaction:

**1. SLA (Service Level Agreement) Monitoring** - Track if tickets are resolved within promised timeframes. My issue had a 48-hour SLA for field visits.

**2. Escalation Procedures** - Clear triggers for when issues move up tiers. Prevents customers from getting stuck in tier-1 loops.

**3. Customer Communication** - Automated updates via text/email about ticket status. I got alerts when the ticket was created, when a technician was assigned, and when they were en route.

**4. Quality Assurance** - Supervisors randomly review closed tickets and listen to support calls to ensure proper handling.

**5. First-Call Resolution Metrics** - Measuring how many issues get fixed on the first contact. This incentivizes proper training and knowledge base maintenance.

**6. Customer Feedback Integration** - Survey results should feed back into training and process improvement.

From an audit perspective, I'd want to verify that these controls aren't just documented but actually functioning. Are SLAs really monitored? Do escalations happen when they should? Is customer feedback actually reviewed and acted upon? That's where audit testing would add value.

---

## Key Takeaways

1. **Common ITSM tools** - ServiceNow, BMC Remedy, Jira Service Management, Ivanti
2. **Structured process** - Initial contact → Diagnosis → Escalation → Resolution → Follow-up
3. **SLA monitoring** is critical for customer expectations
4. **Clear escalation procedures** prevent customer frustration
5. **Communication controls** keep customers informed throughout process
6. **Feedback loops** drive continuous improvement

## Connection to Course Themes

This discussion introduces operational controls concepts:

- **Service Level Agreements** appear in Collins audit Finding #5 (Vendor Risk Management)
- **Escalation procedures** relate to Finding #3 (Incident Response) escalation gaps
- **Monitoring and metrics** connect to audit testing procedures
- **Documentation requirements** for audit trails

## Application to IT Auditing

From an audit perspective, key testing areas include:

1. **SLA Compliance Testing** - Sample tickets to verify resolution times
2. **Escalation Control Testing** - Verify triggers and approvals function correctly
3. **Communication Control Testing** - Confirm customers receive status updates
4. **Customer Satisfaction Metrics** - Review survey data and trend analysis
5. **Knowledge Base Currency** - Ensure solutions are documented and updated

## Frameworks Referenced

- ITIL (Information Technology Infrastructure Library) best practices
- ITSM (IT Service Management) frameworks
- SLA management standards
- Customer experience metrics

## Reflection

This exercise made me appreciate how much invisible infrastructure exists behind seemingly simple services. When internet "just works," we don't think about the ticketing systems, escalation procedures, and quality controls operating in the background. But when it breaks, those systems become critical. From an audit viewpoint, testing these operational processes ensures organizations can actually deliver the service levels they promise.
