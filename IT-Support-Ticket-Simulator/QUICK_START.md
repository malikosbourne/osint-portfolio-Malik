# Quick Start Guide - IT Support Ticket Simulator

## How to Create Your First Ticket

### Step 1: Go to Your Repository
Visit: https://github.com/malikosbourne/IT-Support-ticket-simulator-

### Step 2: Create a New Issue (Ticket)
1. Click the **"Issues"** tab at the top
2. Click the green **"New Issue"** button
3. You'll see the **"IT Support Ticket"** template - click **"Get started"** next to it

### Step 3: Fill Out the Template

Here's a sample ticket to get you started:

**Title:** `[Laptop] - Can't connect to WiFi`

**User:**
```
Office user on Windows 11 laptop, working from home
```

**Issue description:**
```
User reports: "My internet isn't working. I can't get online at all."
```

**Environment:**
- OS: Windows 11
- Device: Dell Latitude 7420
- Network: Home WiFi (Spectrum)
- Account type: Standard user account

**Initial assessment:**
```
Possible WiFi adapter issue, driver problem, or network configuration issue. User is vague about exact symptoms.
```

**Steps taken:**
1. Asked user to check WiFi icon in system tray
2. Verified WiFi adapter is enabled in Device Manager
3. Checked network adapter drivers
4. Attempted to reset network stack

**Outcome:**
Resolved / Escalated / Workaround

**Root cause (if known):**
```
WiFi driver was corrupted after Windows Update. Required driver reinstall.
```

**Prevention / notes:**
```
Ensure Windows Update doesn't break drivers. Consider driver backup before major updates.
```

### Step 4: Work Through the Ticket

As you troubleshoot:
- Add comments to the issue with updates
- Edit the issue to update "Steps taken" as you go
- Update "Outcome" when resolved
- Fill in "Root cause" once you figure it out

## Practice Workflow

### Daily Practice Routine

1. **Morning:** Create 1-2 new tickets from `COMMON_SCENARIOS.md`
2. **Work on tickets:** Research, troubleshoot, document steps
3. **Update tickets:** Add findings, mark as resolved
4. **Review:** Look at closed tickets to identify patterns

### Generating Realistic Scenarios

**Method 1: Break Your Own Stuff**
- Intentionally break something on your device
- Document the problem as a ticket
- Fix it and document the solution

**Method 2: Use ChatGPT**
Ask ChatGPT:
```
"Pretend you're a confused office worker reporting an IT problem. 
Describe a vague, unclear issue with a Windows laptop. 
Make it realistic - include some irrelevant details and miss important information."
```

**Method 3: Common Scenarios**
Pick from `COMMON_SCENARIOS.md` and add your own details

## Example Ticket Workflow

1. **Create ticket** with vague initial description
2. **Initial assessment** - what do you think it might be?
3. **Gather info** - ask clarifying questions (add as comments)
4. **Troubleshoot** - document each step
5. **Resolve** - update outcome and root cause
6. **Learn** - add prevention notes

## Tips for Maximum Learning

- **Don't rush** - Take time to research each issue
- **Document everything** - Even failed attempts are valuable
- **Be realistic** - Include dead ends and wrong assumptions
- **Review regularly** - Look for patterns in your closed tickets
- **Mix difficulty** - Some quick wins, some deep dives

## Using Labels (Optional)

Create labels in GitHub Issues for:
- `Priority: High/Medium/Low`
- `Category: Hardware/Software/Network`
- `Status: Open/In Progress/Resolved`

This helps organize and track your practice tickets!

