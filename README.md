# README

This is the application for the Ella Nails to allowe customers easily book appointments
and allow the service to easily keep tracking of their activities.

Use cases:
  - One staff can have many NailService
  - One service can belong to one staff only
  - A service can have different price based on a specific staff
  - Availability will be determined by the current number of booked service ->
  each service may have an estimated time from start to finish
  - What is the appropriate time slot for NailService (5-minute slots)
  - A customers can schedule for a service with the same staff on different days
  - WorkFlow:
  *For a calendar -> preresent all days of the month -> calculate availability based on the day that the customers choose*
  *Before preresenting final time slots -> only calculate the total availability for the next 31 days*
    - Customers choose a staff -> choose the total of services they want
      -> calculate the total of minutes
      -> calculate against the staff's availability (50-minute services should fit in a time slot >= 50 minutes from the beginning)
      -> preresent the final time slots
    - Customer choose a service
      -> calculate that against all the available staff -> preresent all available staff for that service only
      -> let the customers choose more services if needed
      -> preresent the final time slots

Models:
  - NailService: can belong to one employee only
    - name (string)
    - employee_id (number)
    - nail_service_template_id
    - service_category_id (number)
    - duration (time in minutes) (inherit from template - customizable)
    - price (number) (inherit from template - customizable)
  - NailServiceTemplate: has many nail service
    - name (string)
    - price (number)
    - duration (time in minutes)
    - service_category_id (number)
  - ServiceCategory:
    - name (string)
    - can have many NailServices
  - NailEmployee: can have one or more NailService
    - name (string)
  - Customer:
    - email (string)
    - phone number (string number)
    - name (string)
  - ScheduledSlot: (make this a service to store temporary data from the front end instead)
    - time_start (hour:minute) - minimum of the slots
    - time_end (hour:minute) - maximum of the slots
    - slots (hour:minute) - an array string
    - date (date) (indexed)
    - customer_id (indexed)
    - staff_id (indexed)
    - notes

  The time slot difference is 5 minutes
  All the services booked at the same time will be nested in one time slot.
  How do we know which server the nail employee needs to do in one time slot?

