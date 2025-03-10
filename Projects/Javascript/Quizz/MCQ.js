  document.addEventListener('DOMContentLoaded', function() {
   const questionNumberDisplay = document.getElementById('question-number');
    const questionTextDisplay = document.getElementById('question-text');
    const answerButtons = document.querySelectorAll('.answer-button');
    const nextButton = document.getElementById('next-button');
    const quizArea = document.getElementById('quiz-area');
  
    let currentQuestionIndex = 0;
    let score = 0;
    let selectedAnswer = null;
    let questions =[];
    let timeInterval;
    let timeLeft = 60;

    
  // Get subject and question count from URL
  const urlParams = new URLSearchParams(window.location.search);
  const subject = urlParams.get('subject');
  const questionCount = parseInt(urlParams.get('questions')) || 10;


    async function loadQuestions(subject) {
      try {
          let url;
          if (subject === "ai") {
              url = "https://raw.githubusercontent.com/HirvaJobanputra/BCA_4/refs/heads/main/ai.json"; // Replace with the actual raw URL
          } else if (subject === "ar") {
              url = "https://raw.githubusercontent.com/HirvaJobanputra/BCA_4/refs/heads/main/ar.json"; // Replace with the actual raw URL
          } else if (subject === "gaming") {
              url = "https://raw.githubusercontent.com/HirvaJobanputra/BCA_4/refs/heads/main/gaming.json"; // Replace with the actual raw URL
          } else {
              return null; // Invalid subject
          }
  
          const response = await fetch(url);
          if (!response.ok) {
              throw new Error(`HTTP error! status: ${response.status}`);
          }
          const data = await response.json();
          return data;
      } catch (error) {
          console.error("Error loading questions:", error);
          return null; // Or handle the error appropriately
      }
  }

  // Generate questions (select random questions)
  function generateQuestions(allQuestions, count) {
      let selectedQuestions = [];
      let questionCopy = [...allQuestions]; // Create a copy to avoid modifying the original

      for (let i = 0; i < count; i++) {
          if (questionCopy.length === 0) {
              // Handle case where there are fewer questions than requested
              break;
          }
          const randomIndex = Math.floor(Math.random() * questionCopy.length);
          selectedQuestions.push(questionCopy[randomIndex]);
          questionCopy.splice(randomIndex, 1);
      }
      return selectedQuestions;
  }

  async function initQuiz() {
    const allQuestions = await loadQuestions(subject); // Use await here
    console.log("All Questions:", allQuestions);
    if (allQuestions) {
        questions = generateQuestions(allQuestions, questionCount);
        console.log("Selected Questions:", questions);
        displayQuestion();
    } else {
        quizArea.innerHTML = "<p>Failed to load questions.</p>";
    }
}

function displayQuestion() {
  if (currentQuestionIndex < questions.length) {
    const currentQuestion = questions[currentQuestionIndex];
      console.log("Current Question:", currentQuestion); // Check the question object
      console.log("Question Text:", currentQuestion.question); // Check the question text
      console.log("Options:", currentQuestion.options); // Check the options array

      questionNumberDisplay.textContent = `Question ${currentQuestionIndex + 1} of ${questions.length}`;
      questionTextDisplay.textContent = currentQuestion.question;

      answerButtons.forEach((button, index) => {
          button.textContent = currentQuestion.answers[index];
          button.dataset.answer = String.fromCharCode(97 + index);
          button.disabled = false;
          button.classList.remove('correct', 'incorrect');
      });

      selectedAnswer = null;
      nextButton.style.display = 'none';
      startTimer();
  } else {
      endQuiz();
  }
}
function startTimer() {
    clearInterval(timeInterval);
    timeLeft = 60;
    updateTimerDisplay();

    timeInterval = setInterval(() => {
        timeLeft--;
        updateTimerDisplay();
        if (timeLeft <= 0) {
            
            clearInterval(timeInterval);
            checkAnswer();
        }
        updateTimerDisplay();
    }
  , 1000);

}
function updateTimerDisplay() {
    const timerDisplay = document.getElementById('timer'); // Add a timer element to your HTML
    timerDisplay.textContent = `Time left: ${timeLeft} seconds`;
}
function nextQuestion() {
    currentQuestionIndex++;
    displayQuestion();
}



  answerButtons.forEach(button => {
      button.addEventListener('click', () => {
          if (selectedAnswer !== null) return;

          selectedAnswer = button.dataset.answer;
          checkAnswer();
      });
  });

  function checkAnswer() {
      const currentQuestion = questions[currentQuestionIndex];
      const isCorrect = selectedAnswer === currentQuestion.answer; 

      answerButtons.forEach(button => {
          button.disabled = true;
          if (button.dataset.answer === currentQuestion.answer) {
              button.classList.add('correct');
          } else if (button.dataset.answer === selectedAnswer) {
              button.classList.add('incorrect');
          }
      });

      if (isCorrect) {
          score++;
      }

      nextButton.style.display = 'block';
  }

  nextButton.addEventListener('click', () => {
      currentQuestionIndex++;
      displayQuestion();
  });

  function endQuiz() {
      quizArea.innerHTML = `<h2>Quiz Complete!</h2><p>Your score: ${score} out of ${questions.length}</p>`;
  }

  initQuiz(); 
});