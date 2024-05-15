﻿
using Microsoft.AspNetCore.Mvc;
using Services;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : ControllerBase
    {
        private readonly IAccountService _accountService;
        public AccountController(IAccountService accountService)
        {
            _accountService = accountService;
        }
        [HttpGet]
        public IActionResult GetAccount(string email, string password)
        {
            var account = _accountService.GetAccount(email, password);

            return Ok(account);
        }
        [HttpGet("isUser")]
        public IActionResult isUser(string email, string passworld)
        {
            return Ok(_accountService.isUser(email, passworld));
        }
    }
}
