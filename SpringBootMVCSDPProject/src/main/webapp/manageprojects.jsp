<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Projects Management</title>
    <style>  
        /* Container to hold the sidebar and content */
        .container {
            display: flex;
            height: 100vh; /* Full viewport height */
        }

        /* Sidebar styling */
        .sidebar {
            width: 390px;
            background: linear-gradient(45deg, rgb(16, 137, 211) 0%, rgb(18, 177, 209) 100%);
            color: white;
            padding: 20px;
            box-sizing: border-box;
        }

        .sidebar a {
            display: block;
            color: white;
            text-decoration: none;
            padding: 30px;
            margin: 5px 0;
            background: rgba(255, 255, 255, 0.2); /* Semi-transparent white for links */
            border-radius: 4px;
        }

        .sidebar a:hover {
            background: rgba(255, 255, 255, 0.4); /* Lighter semi-transparent white on hover */
        }

        /* Main content area */
        .main-content {
            flex-grow: 1;
            padding: 30px;
            background-color: #f4f4f4;
        }

        h1 {
            color: rgb(16, 137, 211);
        }

        /* Basic styling for sections */
        .section {
            padding: 70px;
            margin-bottom: 30px;
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .student-list {
            list-style-type: none;
            padding: 0;
        }

        .student-list li {
            margin: 5px 0;
            background: #e0e0e0;
            padding: 10px;
            border-radius: 4px;
        }
    </style>
</head>
<body>

    <div class="container">
        <!-- Sidebar with different options -->
        <div class="sidebar">
            <h2>Projects Management Dashboard</h2>
            <a href="#option1" onclick="showSection('option1')">Form Student Group</a>
            <a href="#option2" onclick="showSection('option2')">Project Assignment</a>
            <a href="#option3" onclick="showSection('option3')">Webinars&Meetings</a>
            <a href="#option4" onclick="showSection('option4')">Track Progress</a>
            <a href="#option5" onclick="showSection('option5')">Conduct Reviews</a>
            <a href="#option6" onclick="showSection('option6')">Evaluation</a>
        </div>

        <!-- Main content area -->
        <div class="main-content">
            <!-- Section for Project Assignment (with Grouping Students feature) -->
            <div id="option1" class="section" style="display:none;">
                <h1>From Student Group</h1>
                <form id="studentGroupForm" onsubmit="createGroup(event)">
                    <label for="studentId">Student ID:</label><br>
                    <input type="text" id="studentId" name="studentId" placeholder="Enter Student ID"><br><br>
                    <button type="button" onclick="addStudent()">Add Student</button><br><br>

                    <ul class="student-list" id="studentList">
                        <!-- Dynamically added student IDs will appear here -->
                    </ul>

                    <label for="groupName">Group Name:</label><br>
                    <input type="text" id="groupName" name="groupName" placeholder="Enter Group Name" required><br><br>
                    <button type="submit">Create Group</button>
                </form>
                <div id="groupSummary" style="margin-top: 20px; display: none;">
                    <h2>Group Created Successfully!</h2>
                    <p id="groupDetails"></p>
                </div>
            </div>

            <!-- Section for Set Timelines -->
            <div id="option2" class="section" style="display:none;">
                <h1>Project Assignment</h1>
                 <form id="studentGroupForm" onsubmit="createGroup(event)">
                    <label for="studentId"> Enter Student Group:</label><br>
                    <input type="text" id="studentId" name="studentId" placeholder="Enter StudentGroup Name"><br><br>
                    <button type="button" onclick="addStudent()">Select</button><br><br>

                    <ul class="student-list" id="studentList">
                        <!-- Dynamically added student IDs will appear here -->
                    </ul>

                    <label for="groupName">Project:</label><br>
                    <input type="text" id="groupName" name="groupName" placeholder="Enter Project Name" required><br><br>
                    <button type="submit">Assign Project</button>
                </form>
                <div id="groupSummary" style="margin-top: 20px; display: none;">
                    <h2>Group Created Successfully!</h2>
                    <p id="groupDetails"></p>
                </div>
            </div>
            </div>

            <!-- Section for Webinars & Meetings -->
            <div id="option3" class="section" style="display:none;">
                <h1>Webinars & Meetings</h1>
                    <!-- Create Meeting Form -->
    <h2>Create Webinar/Meeting</h2>
    <form id="createMeetingForm" onsubmit="createMeeting(event)">
        <label for="meetingTitle">Title:</label><br>
        <input type="text" id="meetingTitle" name="meetingTitle" placeholder="Enter Meeting Title" required><br><br>

        <label for="meetingDate">Date:</label><br>
        <input type="date" id="meetingDate" name="meetingDate" required><br><br>

        <label for="meetingTime">Time:</label><br>
        <input type="time" id="meetingTime" name="meetingTime" required><br><br>

        <label for="meetingDuration">Duration (in hours):</label><br>
        <input type="number" id="meetingDuration" name="meetingDuration" min="1" required><br><br>

        <label for="meetingAgenda">Agenda/Description:</label><br>
        <textarea id="meetingAgenda" name="meetingAgenda" placeholder="Enter Agenda" required></textarea><br><br>

        <label for="meetingLink">Meeting Link (Optional):</label><br>
        <input type="url" id="meetingLink" name="meetingLink" placeholder="Enter Meeting Link"><br><br>

        <label for="inviteGroup">Select Group to Invite:</label><br>
        <select id="inviteGroup" required>
            <option value="" disabled selected>Select a group</option>
        </select><br><br>

        <button type="submit">Create Meeting</button>
    </form>

    <!-- Scheduled Meetings List -->
    <h2>Scheduled Meetings</h2>
    <ul id="scheduledMeetings">
        <!-- Dynamically added meetings will appear here -->
    </ul>

    <!-- Meeting Registration -->
    <h2>Register for a Meeting</h2>
    <form id="meetingRegistrationForm" onsubmit="registerForMeeting(event)">
        <label for="selectMeeting">Select Meeting:</label><br>
        <select id="selectMeeting" required>
            <option value="" disabled selected>Select a meeting</option>
        </select><br><br>

        <button type="submit">Register</button>
    </form>

    <!-- Meeting Feedback -->
    <h2>Provide Feedback</h2>
    <form id="feedbackForm" onsubmit="submitFeedback(event)">
        <label for="meetingFeedback">Feedback:</label><br>
        <textarea id="meetingFeedback" name="meetingFeedback" placeholder="Enter your feedback here" required></textarea><br><br>

        <button type="submit">Submit Feedback</button>
    </form>
</div>
                
            </div>

            <!-- Section for Track Progress -->
            <div id="option4" class="section" style="display:none;">
                <h1>Track Progress</h1>
                <p>This is the content for Option 4.</p>
            </div>

            <!-- Section for Conduct Reviews -->
            <div id="option5" class="section" style="display:none;">
                <h1>Conduct Reviews</h1>
                <!-- General Feedback Form -->
    <h2>Submit General Feedback</h2>
    <form id="generalFeedbackForm" onsubmit="submitGeneralFeedback(event)">
        <label for="generalFeedback">Your Feedback:</label><br>
        <textarea id="generalFeedback" name="generalFeedback" placeholder="Enter your overall feedback for the project"></textarea><br><br>
        <button type="submit">Submit Feedback</button>
    </form>

    <!-- Feedback Confirmation -->
    <div id="feedbackConfirmation" style="display: none; margin-top: 20px;">
        <h2>Feedback Submitted Successfully!</h2>
        <p>Your feedback has been recorded. Thank you!</p>
    </div>
                
            </div>

            <!-- Section for Evaluation -->
            <div id="option6" class="section" style="display:none;">
                <h1>Evaluation</h1>
                <h2>Rate Project Performance</h2>
    <form id="evaluationForm" onsubmit="submitEvaluation(event)">
        <label for="teamwork">Teamwork (1-5):</label><br>
        <input type="number" id="teamwork" name="teamwork" min="1" max="5" required><br><br>

        <label for="execution">Project Execution (1-5):</label><br>
        <input type="number" id="execution" name="execution" min="1" max="5" required><br><br>

        <label for="timeliness">Adherence to Deadlines (1-5):</label><br>
        <input type="number" id="timeliness" name="timeliness" min="1" max="5" required><br><br>

        <label for="quality">Project Quality (1-5):</label><br>
        <input type="number" id="quality" name="quality" min="1" max="5" required><br><br>

        <button type="submit">Submit Evaluation</button>
    </form>

    <!-- Evaluation Summary -->
    <div id="evaluationSummary" style="display: none; margin-top: 20px;">
        <h2>Submit General Feedback</h2>
<div style="display: flex; align-items: flex-start; gap: 20px;">
    <!-- Feedback Form -->
    <form id="generalFeedbackForm" onsubmit="submitGeneralFeedback(event)" style="flex: 1;">
        <label for="generalFeedback">Your Feedback:</label><br>
        <textarea id="generalFeedback" name="generalFeedback" placeholder="Enter your overall feedback for the project" style="width: 100%; height: 100px;"></textarea><br><br>
        <button type="submit">Submit Feedback</button>
    </form>

    <!-- Feedback Confirmation -->
    <div id="feedbackConfirmation" style="display: none; flex: 1; background-color: #f9f9f9; padding: 10px; border: 1px solid #ddd; border-radius: 4px;">
        <h2>Feedback Submitted Successfully!</h2>
        <p>Your feedback has been recorded. Thank you!</p>
    </div>
</div>
        
    </div>
                
            </div>
        </div>
    </div>

    <!-- JavaScript to toggle sections and manage groups -->
    <script>
        function showSection(option) {
            // Hide all sections
            var sections = document.querySelectorAll('.section');
            sections.forEach(function(section) {
                section.style.display = 'none';
            });

            // Show the selected section
            document.getElementById(option).style.display = 'block';
        }

        function addStudent() {
            const studentId = document.getElementById("studentId").value.trim();
            if (studentId) {
                const studentList = document.getElementById("studentList");
                const listItem = document.createElement("li");
                listItem.textContent = studentId;
                studentList.appendChild(listItem);
                document.getElementById("studentId").value = ""; // Clear input
            } else {
                alert("Please enter a valid Student ID.");
            }
        }

        function createGroup(event) {
            event.preventDefault(); // Prevent form submission
            const groupName = document.getElementById("groupName").value.trim();
            const studentListItems = document.querySelectorAll("#studentList li");
            const studentIds = Array.from(studentListItems).map(item => item.textContent);

            if (groupName && studentIds.length > 0) {
                const groupDetails = `Group Name: ${groupName}<br>Students: ${studentIds.join(", ")}`;
                document.getElementById("groupDetails").innerHTML = groupDetails;
                document.getElementById("groupSummary").style.display = "block";

                // Clear the form for the next group
                document.getElementById("studentGroupForm").reset();
                document.getElementById("studentList").innerHTML = "";
            } else {
                alert("Please enter a group name and add at least one student.");
            }
        }
    </script>

</body>
</html>

