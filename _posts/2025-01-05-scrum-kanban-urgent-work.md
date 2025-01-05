---
title: How to Handle urgent work in Scrum with Kanban
tags: [Project Management]
---

I often observe that Scrum Teams struggle with unplanned circumstances, leading to the common misconception that the framework lacks the necessary flexibility for actual workplaces.
Urgent work is handled ad hoc outside of the standard workflow, with loss of transparency and unnecessary stress.
A Kanban Board is then used as an alternative to throw in work items at any moment, without actually trying to limit the workload.
Both Scrum and Kanban are actually designed to accomodate urgent items, while making the prioritization choices by the team explicit.

Here is how your Scrum Team can handle urgent items according to the *Scrum Guide*[^scrum-guide].
I also explain what is recommended when Kanban is incorporated according the *Kanban Guide* by [prokanban.org](https://www.prokanban.org/)[^kanban-guide] and the *Kanban Guide for Scrum Teams*[^scrum-kanban-guide].

## Urgent items in Scrum
The Scrum Guide allows for the Sprint Backlog to be updated during the Sprint.
The Sprint Goal is the actual commitment against which progress can be measured, not the Sprint Backlog[^sprint-goal-commitment].
If an urgent work item is functional to the Sprint Goal, then the Developers are supposed to negotiate the scope of the Sprint Backlog with the Product Owner accordingly[^sprint-backog-negotiated].

If the urgent work item is not functional to the Sprint Goal, then it might not be that urgent, as "urgency" implies that the item cannot be delayed.
If the Scrum Team determines that the item is urgent *despite* the Sprint Goal, then the Sprint Goal might be invalid, e.g. due to the Sprint duration being too long[^sprint-too-long].
In such situations the Sprint Goal should not be changed[^sprint-backog-negotiated], but in extreme cases the Product Owner can cancel the Sprint if the Sprint Goal turns out to be obsolete[^cancelled-sprint].

Consequently, a truly urgent work item should always be included in the Sprint Backlog and not be rejected.

[^sprint-goal-commitment]:"Each artifact contains a commitment to ensure it provides information that enhances transparency and focus against which progress can be measured: [...] For the Sprint Backlog it is the Sprint Goal. [...]"[^scrum-guide]

[^sprint-backog-negotiated]:"The Sprint Goal is created during the Sprint Planning event and then added to the Sprint Backlog. As the Developers work during the Sprint, they keep the Sprint Goal in mind. If the work turns out to be different than they expected, they collaborate with the Product Owner to negotiate the scope of the Sprint Backlog within the Sprint without affecting the Sprint Goal."[^scrum-guide]

[^sprint-too-long]:"When a Sprint’s horizon is too long the Sprint Goal may become invalid, complexity may rise, and risk may increase."[^scrum-guide]

[^sprint-goal-no-change]:"  [^scrum-guide]

[^cancelled-sprint]: "A Sprint could be cancelled if the Sprint Goal becomes obsolete. Only the Product Owner has the authority to cancel the Sprint."[^scrum-guide]

## Urgent items in Kanban
### Handling (exceeded) work in progress Limits
One of Kanban Practices' is the control of work in progress (WIP), usually implemented as WIP limits[^kanban-wip-limit].
When a Scrum Team using Kanban sets its WIP limits, it should stick to them[^scrum-team-stick-wip-limit].
As the Sprint Backlog is part of the Definition of Workflow (DoW), adding urgent work items to the Sprint Backlog will affect the work in progress[^sprint-backlog-in-dow].

If adding the urgent item does not exceed the WIP limit, the team can prioritize it without affecting the workflow.
If not, Kanban allows to exceed WIP limits as an exception to the standard workflow[^exceed-wip-limits].

[^kanban-wip-limit]:"Kanban system members must explicitly control the number of work items in a workflow from start to finish. That control is usually represented as numbers or slots/tokens on a Kanban board that are called *WIP limits*. A WIP limit can include (but is not limited to) work items in a single column, several grouped columns/lanes/areas, or a whole board."[^kanban-guide]

[^scrum-team-stick-wip-limit]:"A Scrum  Team  can  explicitly  limit  WIP  however  they  see  fit  but  should  stick  to  that  limit  once established."

[^sprint-backlog-in-dow]:This is not explicitly mentioned in the Kanban Guide for Scrum Teams[^scrum-kanban-guide], but is my understanding as the DoW must include a "definition of the individual units of value that are moving through the workflow" (Kanban's work items)[^kanban-guide] and the Sprint Backlog "is a highly visible, real-time picture of the work that the Developers plan to accomplish during the Sprint in order to achieve the Sprint Goal"[^scrum-guide]. I.e. everything in the Sprint Backlog is a work item by definition.

[^exceed-wip-limits]:"Members should refrain from pulling/selecting more than the number of work items into a given part of the workflow as defined by the WIP Limit. In rare cases, system members may agree to pull additional work items beyond the WIP Limit, but it should not be routine."[^kanban-guide]

### When to change WIP limits
In general the Definition of Workflow (including WIP limits) can be changed at any time during the Sprint.
Still, for a Scrum Team such changes are recommended at the Sprint Retrospective[^sprint-retrospective-kanban], therefore WIP limits should not be changed during the Sprint when urgent work items arise.

By considering workflow changes just at the Sprint Retrospective (incl. changing WIP limits), the team can focus during the Sprint while allowing for regular inspection and adaptation.
As the WIP limits can be exceptionally exceeded, urgent work items can still be prioritized within Scrum's framework and according to Kanban's strategy.

[^sprint-retrospective-kanban]:"A flow-based Sprint Retrospective adds the inspection of flow metrics and analytics to help  determine what improvements the Scrum Team can make to its processes. The Scrum Team using Kanban also inspects and adapts the Definition of Workflow to optimize the flow in the next Sprint. [...], changes to a Scrum Team's Definition of Workflow may happen at any time. Because these  changes  will  have  a  material  impact  on  how  the  Scrum  Team  performs,  changes  made during the regular cadence provided by the Sprint Retrospective event will reduce complexity and improve focus, commitment and transparency."[^scrum-kanban-guide]

## Conclusion
Your Scrum Team has options to handle urgent work items.
First, consider whether the work item is truly urgent based on the Sprint Goal.
If so, then it belongs to the Sprint Backlog through a negotiation between the Product Owner and the Developers.

When Kanban is used, WIP limits may be exceed, as long as the team agrees and acknowledges the exception to the workflow.

However you proceed, consider the chances of inspection and adaptation and ideally address them in the Sprint Retrospective.
During the Sprint Retrospective you may also consider changing the WIP limits.

## Footnotes
[^scrum-guide]:[The Scrum Guide (2020)](https://scrumguides.org/scrum-guide.html)
[^kanban-guide]: [Kanban Guide (2020)](https://kanbanguides.org/english/)
[^scrum-kanban-guide]: [Kanban Guide for Scrum Teams (2021)](https://www.scrum.org/resources/kanban-guide-scrum-teams)