package com.hexaware.main;

import java.util.Scanner;

import com.hexaware.dao.*;
import com.hexaware.exception.PatientNumberNotFoundException;
import com.hexaware.model.Appointments;

public class MainModule{

	public static void main(String[] args)  {
		IHospitalService hs = new HospitalServiceImpl();
		 Appointments appointment = new Appointments();
		 Scanner sc = new Scanner(System.in);
		 String ch = null;
		do {
			System.out.println("Enter a choice:");
			System.out.println("1. Appointment information");
			System.out.println("2. Appointment for patient");
			System.out.println("3. Appointment for doctor");
			System.out.println("4. New Appointment");
			System.out.println("5. Appointment updation");
			System.out.println("6. Appointment deletion");
			
			int choice = sc.nextInt();
			switch (choice) {
			case 1: {
				hs.getAppointmentById();
				
					break;
			}
			case 2: {
				try {
					hs.getAppointmentsForPatient();
				} catch (PatientNumberNotFoundException e) {
					e.printStackTrace();
				}
				
				break;
			}
			case 3: {
				hs.getAppointmentsForDoctor();

				break;
		}
			case 4: { 
			System.out.println("Enter the Appointment ID:");
            int Appointmentid=sc.nextInt();
            System.out.println("Enter the Doctor ID:");
            int Doctorid=sc.nextInt();
            System.out.println("Enter the Patient ID:");
            int Patientid=sc.nextInt();
            System.out.println("Enter the Appointment Date:");
            String AppDate=sc.next();
            System.out.println("Enter the Patient Description:");
            String Desc=sc.next();
            Appointments app=new Appointments(Appointmentid,Doctorid,Patientid,AppDate,Desc);
			
		    hs.scheduleAppointment(app);
		    break;
			}
			case 5: {
					hs.updateAppointment(appointment);
				break;
			}
			case 6: {
				hs.cancelAppointment(appointment);				
			break;
		}
			default: {
				System.out.println("Enter correct choice.");
			}
			}
			System.out.println("Do you want to continue? Enter 'Y' or 'y'");
			ch = sc.next();
		} while (ch.equals("Y")||ch.equals("y"));
		System.out.println("Thank you");
		System.exit(0);
	}
}