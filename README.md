# PsychBot
PsychBot is a mental health helper. A virtual friend that helps you figure out whether you have symptoms related to various mental disorders. The main purpose of this application is to be a place where people can freely open up and get their symptoms checked out.
India is a place where mental issues are considered aren't considered a Taboo, but people knowing about you having a mental issue is a Taboo. So this will help out those people to open up and help themselves.
 
## PsychBot has the following features - 
1. It uses the blender model from Facebook during the usual getting to know you phase, usually the starting questions.
2. After the agreement from the user it starts the session for the various mental issues (eg., PTSD, Anxiety, Depression, etc.).
3. It uses transformer based models to figure out how the person is answering, and gives confidence scores accordingly, as well as a stress level detector model.
4. It can provide you with consultation details at the end of the session.
5. The bot is the deployed on flask-ngrok. It can be used to make a whatsapp bot using Twilio. 

## Mental Issues Addressed in the Screening - 
1. Depression 
2. Hypomania/mania
3. Dysthymic disorder
4. Generalized anxiety disorder
5. Obsessive-compulsive disorder
6. Delusions and hallucinations
7. Panic attacks
8. Agoraphobia
9. Post-traumatic stress disorder
10. Social phobia
11. Borderline personality disorder

## Extra - 
A HealthHelper transformer model is also provided that can be integrated into the chats. It reads the chat until that point and tries to classify as to which type of mental disorder symptoms are being exhibited.

## References - 
1. For the dataset for training the Stress Detector Model - http://www.cs.columbia.edu/~eturcan/data/dreaddit.zip
2. Screening questions for the mental issues - https://www.porticonetwork.ca/web/psychiatry-primary-care/brief-psychiatric-interview/screening-questions

